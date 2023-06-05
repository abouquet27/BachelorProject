/* This llvm pass is based on the paper 'Efficient State Merging in Symbolic Execution' <https://dslab.epfl.ch/pubs/stateMerging.pdf>
   by the Dependable Systems Lab EPFL <https://dslab.epfl.ch/>
*/

#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/DebugInfo.h"
#include "llvm/IR/DebugInfoMetadata.h"
#include "llvm/IR/User.h"
#include "llvm/IR/Metadata.h"
#include "llvm/IR/DebugInfoMetadata.h"
#include "llvm/IR/PatternMatch.h"
#include <list>
#include <algorithm>
#include <stdio.h>

using namespace llvm;
using namespace llvm::PatternMatch;
using namespace std;
double alpha = 0.5;
double beta = 0.6;
int kappa = 1;

/**
 * @brief Maximum loop iterations
 *
 */
int nloops = 1;

/**
 * @brief Maximum recursion depth
 *
 */
int dcalls = 1;

string tabPrefix = "";
bool testing_result = false;

namespace
{
    struct FirstQueryPass : public FunctionPass
    {
    public:
        static char ID;
        FirstQueryPass() : FunctionPass(ID) {}
        virtual bool runOnFunction(Function &F) override;
    };
}

/**
 * @brief Struct that associates a branch instruction with its number of occurences
 * Mainly use to store the number of occurences of a branch instruction in a loop
 */
struct BranchCount
{
    const BranchInst *BI;
    int count = 0;
};

/**
 * @brief Struct that associates a function with its number of occurences
 * Mainly use to store the number of occurences of a function in recursion
 */
struct CallCount
{
    Function *F;
    int count = 0;
};

/**
 * @brief Print all the arguments of a function
 *
 * @param F, the function we want to print the arguments
 */
void printAllArgs(Function *F)
{
    for (auto &arg : F->args())
    {
        errs() << "Argument: " << arg << "\n";
    }
}

/**
 * @brief Print all the operands of a value
 *
 * @param val, the value we want to print the operands
 */
void printAllOperands(Value *val)
{
    if (val == NULL)
    {
        return;
    }
    if (llvm::isa<llvm::Instruction>(val))
    {
        Instruction *I = dyn_cast<Instruction>(val);
        for (const llvm::Use &Op : I->operands())
        {
            Value *V = Op.get();
            errs() << "Operand: " << *V << "\n";
        }
    }
    return;
}

/**
 * @brief Check if a value is a hot variable or not. The definition of a hot variable is given in the paper mentionned in the file.
 *
 * @param Qadd, the number of additional queries
 * @param Qt, the total number of queries
 * @return int, returns 1 if the value is a hot variable, 0 otherwise
 */
int isAHotVariable(double Qadd, double Qt)
{
    if (Qadd > alpha * Qt)
    {
        return 1;
    }
    else
    {
        return 0;
    }
}

/**
 * @brief Compute if a BasicBlock comes before another one in the same function. It is uses to check if a block is in a loop or not.
 *
 * @param searched, the block we are looking for
 * @param expected, the block used as a reference
 * @return double, returns 1 if the searched block comes before the expected one, -1 if it comes after and 0 if it is the same block
 */
double blockComeBefore(BasicBlock *searched, const BasicBlock *expected)
{
    Function *F = searched->getParent();
    BasicBlock *index = &F->front();

    if (searched == expected)
    {
        return 0;
    }

    for (BasicBlock &BB : *F)
    {
        if (&BB == searched)
        {
            return 1;
        }
        if (&BB == expected)
        {
            return -1;
        }
    }
    return 0;
}

/**
 * @brief Check if a particular value depends on another one. The main point of this function is to find
 * if a condition depends on a the varaible we are looking for.
 *
 * @param tested, the value we are testing
 * @param searched, the value we are looking for
 * @return double, return 1 if the tested value depends on the searched one, 0 otherwise
 */
double matchValue(Value *tested, Value *searched)
{ // add the value type
    if (tested == NULL)
    {
        return 0;
    }

    if (tested == searched)
    {
        return 1;
    }

    if (llvm::isa<llvm::Instruction>(tested))
    {
        Instruction *I = dyn_cast<Instruction>(tested);

        if (llvm::isa<llvm::PHINode>(I))
        {
            PHINode *PHI = dyn_cast<llvm::PHINode>(I);

            //TODO adapter pour plusieurs block venant avant 
            if (blockComeBefore(PHI->getIncomingBlock(0), I->getParent()))
            {
                return matchValue(PHI->getIncomingValue(0), searched);
            }

            return 0;
        }

        double result = 0;

        for (const llvm::Use &Op : I->operands())
        {
            Value *V = Op.get();

            if (V == searched)
            {
                return 1;
            }

            double res = matchValue(V, searched);
            result = result || res;
        }
        return result;
    }
    else
    {
        return 0;
    }

    return 0;
}

/**
 * @brief return always 1, used to compute the total number of queries
 *
 * @param tested, unused
 * @param searched, unused
 * @return double, always return 1
 */
double returnTrueFunction(Value *tested, Value *searched)
{
    return 1;
}

/**
 * @brief Compute the number of queries for a particular value. The number of queries is defined in the paper mentionned in the file.
 *
 * @param Inst, the current instruction
 * @param researched, the value we are testing
 * @param backwardBranches, the list of backward branches
 * @param recursionCount, the list of functions that depend on the value `researched`
 * @param computeFunction, the function used to compute the number of queries
 * @return double, the number of queries for the value
 */
double compute_query(Instruction *Inst, Value *researched, list<BranchCount> backwardBranches, list<CallCount> recursionCount, double (*computeFunction)(Value *, Value *))
{
    if (Inst == NULL || llvm::isa<llvm::ReturnInst>(Inst))
    {
        // errs() << "No more instructions " << "\n";
        return 0;
    }
    else
    {

        // errs() << tabPrefix << "Instruction: " << *Inst << "\n";

        if (llvm::isa<llvm::CallInst>(Inst))
        {
            CallInst *CI = dyn_cast<CallInst>(Inst);
            // errs() << tabPrefix << "Call Instruction Found" << "\n";

            int index = 0;
            for (auto &dop : CI->data_ops())
            {

                Value *V = dop.get();
                // errs() << tabPrefix << "Argument: " << *V << "\n";

                if (matchValue(V, researched))
                {
                    Function *F = CI->getCalledFunction();

                    // errs() << tabPrefix << "Function called: " << F->getName() << "\n";

                    bool found = false;
                    for (auto &call : recursionCount)
                    {
                        if (call.F == F)
                        {
                            found = true;
                        }
                    }

                    if (!found)
                    {
                        // errs() << tabPrefix << "Adding a new call to the list" << "\n";
                        recursionCount.push_front(CallCount{F, 0});
                    }

                    for (auto &call : recursionCount)
                    {
                        if (call.F == F)
                        {

                            if (call.count > dcalls-1)
                            {
                                // errs() << tabPrefix << "Maximum recursion detected " << "\n";
                                return 0;
                            }
                            call.count++;
                        }
                    }

                    // errs() << tabPrefix << "index " << index << "\n";
                    // errs() << tabPrefix << "The function is varArgs: " << F->isVarArg() << "\n";

                    // printAllArgs(F);

                    if (F->isDeclaration())
                    {
                        // errs() << tabPrefix << "Function is a declaration" << "\n";
                        return 0;
                    }

                    // errs() << tabPrefix << "Finish to print the args" << "\n";
                    Argument *arg = F->getArg(index);

                    // errs() << tabPrefix << "Outside the call" << *(Inst->getNextNode()) << "\n";
                    double outside_call = compute_query(Inst->getNextNode(), researched, backwardBranches, recursionCount, computeFunction);

                    // errs() << tabPrefix << "Inside the call" << *(&F->front().front()) << "\n";
                    double inside_call = compute_query(&F->front().front(), arg, backwardBranches, recursionCount, computeFunction);

                    // errs() << tabPrefix << "Inside call: " << inside_call << "\n";
                    // errs() << tabPrefix << "Outside call: " << outside_call << "\n";

                    return inside_call + outside_call;
                }
                index++;
            }
        }

        if (llvm::isa<llvm::BranchInst>(Inst))
        {
            const BranchInst *BI = dyn_cast<BranchInst>(Inst);

            if (BI->isConditional())
            {
                string tmpPrefix = tabPrefix;
                tabPrefix = tabPrefix + "  ";
                // The instruction is a conditional Branch instruction if (e) go to L'' else go to succ(L')
                // it means there is 2 successors

                // errs() << "Conditional branch instruction found " << *BI << "\n";
                Value *cond = BI->getCondition();

                // errs() << "Second successor: " << BI->getSuccessor(1)->front()<< "\n";
                double part2 = beta * compute_query(&BI->getSuccessor(1)->front(), researched, backwardBranches, recursionCount, computeFunction);
                // errs() << "Part 2: " << part2 << "\n";

                // errs() <<"Compute the function on " << v << "\n";
                double part3 = computeFunction(cond, researched);
                // errs() <<"Part 3: " << part3 << "\n";

                // errs() << "First successor: " << BI->getSuccessor(0)->front()<< "\n";

                double part1 = beta * compute_query(&BI->getSuccessor(0)->front(), researched, backwardBranches, recursionCount, computeFunction);

                // errs() << "Part 1: " << part1 << "\n";

                tabPrefix = tmpPrefix;
                return part1 + part2 + part3;
            }
            else
            {
                // errs() << "Unconditional branch instruction found " << "\n";
                BasicBlock *BB = BI->getSuccessor(0);
                const BasicBlock *Parent = BI->getParent();

                if (blockComeBefore(BB, Parent) == 1)
                {
                    // errs() << "Backward branch found " << "\n";
                    //  contains
                    bool found = false;
                    for (auto &branch : backwardBranches)
                    {
                        if (branch.BI == BI)
                        {
                            found = true;
                        }
                    }

                    if (!found)
                    {
                        backwardBranches.push_back(BranchCount{BI, 0});
                    }

                    for (auto &branch : backwardBranches)
                    {
                        if (branch.BI == BI)
                        {
                            if (branch.count >= nloops-1)
                            {
                                // errs() << "Backward branch count exceeded " << "\n";
                                return 0;
                            }
                            branch.count++;
                            return compute_query(&BI->getSuccessor(0)->front(), researched, backwardBranches, recursionCount, computeFunction);
                        }
                    }
                    return compute_query(&BI->getSuccessor(0)->front(), researched, backwardBranches, recursionCount, computeFunction);
                }

                // errs() << "Backward branch not found " << "\n";
                //  The instruction is an unconditional Branch instruction
                //  it means there is 1 successor
                return compute_query(&BI->getSuccessor(0)->front(), researched, backwardBranches, recursionCount, computeFunction);
            }
        }

        // The instruction is not a branch of
        return compute_query(Inst->getNextNode(), researched, backwardBranches, recursionCount, computeFunction);
    }
}

/**
 * @brief llvm pass that computes the number of query of each variable of a function
 *
 * @param F, the function to analyze
 * @return false
 */
bool FirstQueryPass::runOnFunction(Function &F)
{
    errs() << "Visiting function " << F.getName() << "\n";

    Instruction *firstInst = &F.getEntryBlock().front();

    list<double> values;
    for (auto &arg : F.args())
    {

        errs() << "Argument: " << arg << "\n";

        Value *v = dyn_cast<Value>(&arg);

        list<BranchCount> branchList1;
        list<CallCount> callList1;

        // errs() << "\nComputing the match Value function " << arg << "\n\n";
        double result1 = compute_query(firstInst, v, branchList1, callList1, matchValue);

        list<BranchCount> branchList2;
        list<CallCount> callList2;

        // errs() << "Computing the true function " << arg << "\n";
        double result2 = compute_query(firstInst, v, branchList2, callList2, returnTrueFunction);

        errs() << "MatchValueFunction: " << result1 << "\n";
        errs() << "returnTrueFunction: " << result2 << "\n";

        // int result = isAHotVariable(result1, result2);

        if (isAHotVariable(result1, result2))
        {
            errs() << "The variable " << arg << " is a hot variable "
                   << "\n";
        }
        else
        {
            errs() << "The variable " << arg << " is not a hot variable "
                   << "\n";
        }
        errs() << "\n";

        values.push_back(result1);
    }

    if (testing_result)
    {

        if (F.getParent()->global_size() < values.size())
        {
            errs() << "The number of global variables is not equal to the number of values computed"
                   << "\n";
            return false;
        }

        int index = 0;
        for (auto &gl : F.getParent()->globals())
        {
            if (index >= values.size())
            {
                break;
            }
            llvm::Constant *constant = llvm::cast<llvm::Constant>(gl.getInitializer());
            llvm::ConstantFP *constantFP = llvm::cast<llvm::ConstantFP>(constant);
            double value = constantFP->getValueAPF().convertToDouble();
            double v = values.front();

            errs() << "Expected value " << value << "\n";
            errs() << "Actual value " << v << "\n";

            assert(value == v);

            errs() << "Assert has passed for " << gl.getName() << "\n";
            errs() << "\n";

            values.pop_front();

            index++;
        }
    }
    return false;
}

// Register the pass with llvm, so that we can call it with firstquerypass
char FirstQueryPass::ID = 0;
static RegisterPass<FirstQueryPass> X("firstquerypass", "Compute the estimated number of solver queries");