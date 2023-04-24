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


using namespace llvm;
using namespace llvm::PatternMatch;
double alpha = 0.5;
double beta = 0.6;
int kappa = 1;

namespace {
    struct FirstQueryPass : public FunctionPass {
        public:
            static char ID;
            FirstQueryPass() : FunctionPass(ID) {}
            virtual bool runOnFunction(Function &F) override;
    };
}

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
        //errs() << "Instruction: " << *tested << "\n";
        Instruction *I = dyn_cast<Instruction>(tested);

        if (llvm::isa<llvm::LoadInst>(I)){
            //errs() << "Load instruction found " << "\n";
            LoadInst *LI = dyn_cast<LoadInst>(I);
            Instruction * nextInst = I->getPrevNode();
            while (nextInst != NULL) {
                //errs() << "Next instruction: " << *nextInst << "\n";
                if (llvm::isa<llvm::StoreInst>(nextInst)){
                    StoreInst *SI = dyn_cast<StoreInst>(nextInst);
                    Value *V = SI->getPointerOperand();
                    if (LI->getPointerOperand() == SI->getPointerOperand()){
                        if (SI->getValueOperand() == searched){
                            //errs() << "Found a store and it is related " << *nextInst << " / " << *searched << "\n";
                            return 1;
                        }
                        //errs() << "Found a store but it is not related  " << *nextInst << "\n";
                    }
                }
                
                if (nextInst == &I->getParent()->front()){
                    //errs() << "No more instructions check the next block " << "\n";
                    if(I->getParent()->getPrevNode() == NULL){
                        //errs() << "No more instructions " << "\n";
                        return 0;
                    };
                    nextInst = &I->getParent()->getPrevNode()->back();
                } else {
                    nextInst = nextInst->getPrevNode();
                }
            }
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
            return result;
        }

    } else {
        return 0;
    }

    return 0;

}

double q(Instruction *Inst, Value* researched, double(*computeFunction)(Value*, Value*)){
    if (Inst ==NULL ||llvm::isa <llvm::ReturnInst> (Inst)) {
        //errs() << "No more instructions " << "\n";
        return 0;
    } else {
        errs() << "Instruction: " << *Inst << "\n";
        if (llvm::isa <llvm::BranchInst> (Inst)){
            const BranchInst *BI = dyn_cast<BranchInst>(Inst);
            
            if (BI->isConditional()){
                // The instruction is a conditional Branch instruction if (e) go to L'' else go to succ(L')
                // it means there is 2 successors

                errs() << "Conditional branch instruction found " << "\n";
                Value* v = BI->getCondition();
                double part3 = computeFunction(v, researched);

                double part1 = beta*q(&BI->getSuccessor(0)->front(), researched, computeFunction);
                double part2 = beta*q(&BI->getSuccessor(1)->front(), researched, computeFunction);
               
                return part1 + part2 + part3;
           
            }

            // The instruction is an unconditional Branch instruction
            // it means there is 1 successor
            return q(&BI->getSuccessor(0)->front(), researched, computeFunction);         
        } 

        // The instruction is not a branch of 
        return q(Inst->getNextNode(), researched, computeFunction);
        
    }
    
}


bool FirstQueryPass::runOnFunction(Function &F) {
    //errs() << "Visiting function " << F.getName() << "\n";

    Value* arg = F.getArg(0);
    errs() << "Argument: " << *arg << "\n";

    Instruction* firstInst = &F.getEntryBlock().front();
    
    double result1 = q(firstInst, arg, matchValue);

    errs() << "Result1: " << result1 << "\n";

    double result2 = q(firstInst, arg, returnTrueFunction);

    errs() << "Result2: " << result2 << "\n";

    int result = isAHotVariable(result1, result2);

    if (result == 1){
        errs() << "The variable" << *arg << " is a hot variable " << "\n";
    } else {
        errs() << "The variable" << *arg << " is not a hot variable " << "\n";
    }
    // for (BasicBlock &BB : F) {
    //     //errs() << "New Block " << "\n";
    //     for (Instruction &I : BB) {
    //         // The instruction is a Branch instruction
    //         if (llvm::isa <llvm::BranchInst> (I)){
    //             //errs() << "Branch instruction found " << "\n";
    //             const BranchInst *BI = dyn_cast<BranchInst>(&I);
    //             // The instruction is a condition Branch instruction
    //             if (BI->isConditional()){
    //                 errs() << "Conditional branch instruction found " << "\n";

    //                 Value* cond = BI->getCondition();
    //                 errs() << "Condition: " << *cond << "\n";

    //                 matchValue(cond, arg);


    //                 // for (const llvm::Use &Op : BI->operands()) {
    //                 //     Value *V = Op.get();
    //                 //     errs() << "Operand: " << *V << "\n";
    //                 // }
    //             }
    //         }
           


            
    //     }
    // }
    return false;
}


// Register the pass with llvm, so that we can call it with firstquerypass
char FirstQueryPass::ID = 0;
static RegisterPass<FirstQueryPass> X("firstquerypass", "Compute the estimated number of solver queries");