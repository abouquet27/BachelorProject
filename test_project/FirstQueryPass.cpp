#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/DebugInfo.h"
#include "llvm/IR/DebugInfoMetadata.h"


using namespace llvm;


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
    errs() << "I'm here! 1 \n";

    for (BasicBlock &BB : F) {
        for (Instruction &II : BB) {
            Instruction *I = &II;
            if (CallInst *CI = dyn_cast<CallInst>(I)) {
                errs() << "Encountered a call instruction " << CI << "\n";
                if (DILocation *Loc = I->getDebugLoc()) {
                  errs() << "I'm here! 2 \n";
                  unsigned Line = Loc->getLine();
                  StringRef File = Loc->getFilename();
                  StringRef Dir = Loc->getDirectory();
                  errs() << Dir << "/" << File << ":" << Line << "\n";
                }
            }
        }
    }
    return false;
}

// Register the pass with llvm, so that we can call it with firstquerypass
char FirstQueryPass::ID = 0;
static RegisterPass<FirstQueryPass> X("firstquerypass", "Example LLVM pass printing each function it visits");