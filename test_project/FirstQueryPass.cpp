#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/DebugInfo.h"
#include "llvm/IR/DebugInfoMetadata.h"


using namespace llvm;

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

bool FirstQueryPass::runOnFunction(Function &F) {
    errs() << "Visiting function " << F.getName() << "\n";

    Function::iterator b = F.begin();
    BasicBlock &BB = *b;
    Instruction *Inst = &BB.front();
    Instruction *Inst2 = Inst->getNextNode();
    Instruction *Inst3 = Inst2->getNextNode();
    Instruction *Inst4 = Inst3->getNextNode();
    Instruction *Inst5 = Inst4->getNextNode();
    Instruction *Inst6 = Inst5->getNextNode();
    Instruction *Inst7 = Inst6->getNextNode();
    Instruction *Inst8 = Inst7->getNextNode();

    if (llvm::isa <llvm::BranchInst> (Inst8)){
                errs() << "Branch instruction found " << "\n";
                const BranchInst *BI = dyn_cast<BranchInst>(Inst8);
                // The instruction is a condition Branch instruction
                if (BI->isConditional()){
                    errs() << "Conditional branch instruction found " << "\n";
                    errs() << "Number of successors " << BI->getNumSuccessors() << "\n";
                    Instruction *Inst9 = &BI->getSuccessor(1)->front();

                    if (llvm::isa <llvm::StoreInst> (Inst9)){
                        errs() << "Store instruction found " << "\n";
                    }
                    if (llvm::isa <llvm::CallInst> (Inst9)){
                        errs() << "Call instruction found " << "\n";
                    }
                }
            }
   
    
    



    
    




    

    // for (BasicBlock &BB : F) {
    //     errs() << "New Block " << "\n";
    //     for (Instruction &I : BB) {
    //         // The instruction is a Branch instruction
    //         if (llvm::isa <llvm::BranchInst> (I)){
    //             errs() << "Branch instruction found " << "\n";
    //             const BranchInst *BI = dyn_cast<BranchInst>(&I);
    //             // The instruction is a condition Branch instruction
    //             if (BI->isConditional()){
    //                 errs() << "Conditional branch instruction found " << "\n";
    //             }
    //         }
           


            
    //     }
    // }
    return false;
}

double queryFunction(Instruction *Inst){
    if (Inst ==NULL) {
        errs() << "No more instructions " << "\n";
        return 0;
    } else {
        if (llvm::isa <llvm::BranchInst> (Inst)){
            errs() << "Branch instruction found " << "\n";
            const BranchInst *BI = dyn_cast<BranchInst>(Inst);
            
            if (BI->isConditional()){
                // The instruction is a conditional Branch instruction if (e) go to L'' else go to succ(L')
                // it means there is 2 successors

                double part1 = beta*queryFunction(&BI->getSuccessor(0)->front());
                double part2 = beta*queryFunction(&BI->getSuccessor(1)->front());
                double part3 = ...; //what to do ? 
           
            }

            // The instruction is an unconditional Branch instruction
            // it means there is 1 successor
            return queryFunction(&Inst->getParent()->getNextNode()->front());         
        } 

        // The instruction is not a branch of 
        return queryFunction(Inst->getNextNode());
        
    }
    
}

// Register the pass with llvm, so that we can call it with firstquerypass
char FirstQueryPass::ID = 0;
static RegisterPass<FirstQueryPass> X("firstquerypass", "Compute the estimated number of solver queries");