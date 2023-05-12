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


using namespace llvm;
using namespace llvm::PatternMatch;
using namespace std;
double alpha = 0.5;
double beta = 0.6;
int kappa = 1;

int nloops = 1;
int dcalls = 0;

namespace {
    struct FirstQueryPass : public FunctionPass {
        public:
            static char ID;
            FirstQueryPass() : FunctionPass(ID) {}
            virtual bool runOnFunction(Function &F) override;
    };
}

struct BranchCount {
    const BranchInst *BI;
    int count = 0;
};

struct CallCount {
    CallInst *CI;
    int count = 0;
};

list<BranchCount> branchList;
list<CallCount> callList;

void printAllOperands(Value* val){
    if(val == NULL) {
        return;
    }
    if (llvm::isa<llvm::Instruction>(val)){
        Instruction *I = dyn_cast<Instruction>(val);
        for (const llvm::Use &Op : I->operands()) {
            Value *V = Op.get();
            errs() << "Operand: " << *V << "\n";
            printAllOperands(dyn_cast<Instruction>(V));
        }
    }
    return;

}

double returnTrueFunction (Value* v1, Value *v2){
    return 1;
}

double checkBackwardBranch(BasicBlock * searched, const BasicBlock * expected){
   Function * F = searched->getParent();
   BasicBlock * index = &F->front();

   //errs() << "Searching for: " << *searched << "\n";
   //errs() << "Expected: " << *expected << "\n";

   for (BasicBlock &BB : *F) {
        if (&BB == searched){
            //errs() << "Found the searched block " << "\n";
            return 1;
        }
        if (&BB == expected){
            //errs() << "Found the expected block " << "\n";
            return 0;
        }
   }
   return 0;

}

int isAHotVariable(double Qadd, double Qt){
    if ( Qadd > alpha*Qt){
        return 1;
    } else {
        return 0;
    }
}

double matchValue(Value* tested, Value* searched){ //add the value type 
    if (tested == NULL){
        return 0;
    }
    if (llvm::isa<llvm::Instruction>(tested)){
        //errs() << "Trackback Instruction: " << *tested << "\n";
        Instruction *I = dyn_cast<Instruction>(tested);

        if (llvm::isa<llvm::PHINode>(I)){
            //errs() << "PHI Node found " << "\n";
            return 0;
        }

        double result = 0;
        for (const llvm::Use &Op : I->operands()) {
            Value *V = Op.get();
            //errs() << "Operand: " << *V << "\n";



            if (V == searched){
                //errs() << "Found a match " << *V << "\n";
                return 1;
            }

            double res = matchValue(V, searched);
            result = result || res;
        }
        return result;

    } else {
        return 0;
    }

    return 0;

}

double q(Instruction *Inst, Value* researched, list<BranchCount> backwardBranches, double(*computeFunction)(Value*, Value*)){
    if (Inst ==NULL ||llvm::isa <llvm::ReturnInst> (Inst)) {
        //errs() << "No more instructions " << "\n";
        return 0;
    } else {
        //errs() << "Instruction: " << *Inst << "\n";
        if (llvm:: isa <llvm:: CallInst>(Inst)){
            errs() << "Call instruction found " << "\n";
            CallInst *CI = dyn_cast<CallInst>(Inst);

            Function *F = CI->getCalledFunction();

            errs() << "Function called: " << F->getName() << "\n";

            for (auto &dop: CI->data_ops()){
                Value *V = dop.get();
                errs() << "Argument: " << *V << "\n";

                if (matchValue(V, researched)){
                    return q(&F->front().front(), researched, backwardBranches, computeFunction);
                }

            }
        }

        if (llvm::isa <llvm::BranchInst> (Inst)){
            const BranchInst *BI = dyn_cast<BranchInst>(Inst);

            
            if (BI->isConditional()){
                // The instruction is a conditional Branch instruction if (e) go to L'' else go to succ(L')
                // it means there is 2 successors

                //errs() << "Conditional branch instruction found " << "\n";
                Value* v = BI->getCondition();
                double part3 = computeFunction(v, researched);

                double part1 = beta*q(&BI->getSuccessor(0)->front(), researched, backwardBranches, computeFunction);
                double part2 = beta*q(&BI->getSuccessor(1)->front(), researched, backwardBranches, computeFunction);
               
                return part1 + part2 + part3;
           
            } else {
                //errs() << "Unconditional branch instruction found " << "\n";
                BasicBlock *BB = BI->getSuccessor(0);
                const BasicBlock *Parent = BI->getParent();

                if (checkBackwardBranch(BB, Parent)){
                    //errs() << "Backward branch found " << "\n";
                    // contains 
                    bool found = false;
                    for (auto &branch : backwardBranches){
                        if (branch.BI == BI){
                            found = true;
                        }
                    }

                    if(!found){
                        backwardBranches.push_back(BranchCount{BI, 0});
                    }

                    for (auto &branch : backwardBranches){
                        if (branch.BI == BI){
                            if (branch.count == nloops-1){
                                //errs() << "Backward branch count exceeded " << "\n";
                                backwardBranches.pop_back();
                                return 0;
                            }
                            branch.count++;
                            return q(&BI->getSuccessor(0)->front(), researched, backwardBranches, computeFunction);
                        }
                    }
                    return q(&BI->getSuccessor(0)->front(), researched, backwardBranches, computeFunction);
                }

                //errs() << "Backward branch not found " << "\n";
                // The instruction is an unconditional Branch instruction
                // it means there is 1 successor
                return q(&BI->getSuccessor(0)->front(), researched, backwardBranches, computeFunction); 
            }

                    
        } 

        // The instruction is not a branch of 
        return q(Inst->getNextNode(), researched, backwardBranches, computeFunction);
        
    }
}


bool FirstQueryPass::runOnFunction(Function &F) {
    errs() << "Visiting function " << F.getName() << "\n";

    Instruction* firstInst = &F.getEntryBlock().front();

    list<BranchCount> branchList;
    list<CallCount> callList;

    for (auto &arg : F.args()) {

        list<BranchCount> branchList;
        list<CallCount> callList;
        errs() << "Argument: " << arg << "\n";

        Value * v = dyn_cast<Value>(&arg);

        double result1 = q(firstInst, v, branchList, matchValue);


        double result2 = q(firstInst, v, branchList, returnTrueFunction);

        errs() << "MatchValueFunction: " << result1 << "\n";
        errs() << "TrueFunction: " << result2 << "\n";

        //int result = isAHotVariable(result1, result2);

        if (isAHotVariable(result1, result2)){
            errs() << "The variable " << arg << " is a hot variable " << "\n";
        } else {
            errs() << "The variable " << arg << " is not a hot variable " << "\n";
        }
        errs() << "\n";
    }
    return false;
}


// Register the pass with llvm, so that we can call it with firstquerypass
char FirstQueryPass::ID = 0;
static RegisterPass<FirstQueryPass> X("firstquerypass", "Compute the estimated number of solver queries");