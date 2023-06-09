
#compiler
CC = clang

#compiler flags
PASSFLAGS = -std=c++17 -g3 -shared  -Wl,-headerpad_max_install_names -undefined dynamic_lookup
CASESFLAGS = 
export cs = case
EXPORT PATH := /usr/local/opt/llvm/bin:$PATH"

INCLUDES = -I /usr/local/opt/llvm/include
coreutilsPath = coreutils-9.3/build/src

cases = basicCondition1 basicCondition2 basicCondition3 basicCondition4 basicCondition5
cases += arrayfunction forloopfunction1 forloopfunction2 recursion1 recursion2 externallibrary
cases += caseTestFromDoc loopandrecursion1 loopandrecursion2 doubleforloop1 doublewhileloop forandwhileloopcombined
cases += whileloop1 whileloop2 
all: $(cases) 

$(cases): 
	$(MAKE) case cs=$@

pass: 
	$(CC) $(PASSFLAGS) $(INCLUDES) -o querypass.so QueryPass.cpp 
	@echo  Pass compiled successfully

case: pass
	@echo  Compiling case $(cs)
	$(CC) -emit-llvm -c -S -Xclang -disable-O0-optnone -o cases/$(cs).ll cases/$(cs).c
	opt -p=mem2reg -S -o cases/$(cs).ll cases/$(cs).ll
	opt -load querypass.so -querypass  -enable-new-pm=0 cases/$(cs).ll
	@echo  "Case $(cs) compiled successfully\n"

coreutilscase: pass
	@echo  Compiling coreutils $(cs)
	extract-bc coreutils-9.3/build/src/$(cs).o -o=coreutils-9.3/build/src/$(cs).bc
	llvm-dis coreutils-9.3/build/src/$(cs).bc
	opt -p=mem2reg -S -o coreutils-9.3/build/src/$(cs).ll coreutils-9.3/build/src/$(cs).ll
	opt -load querypass.so -querypass  -enable-new-pm=0 coreutils-9.3/build/src/$(cs).ll
	@echo  "Coreutils $(cs) compiled successfully\n"

clean: 
	rm cases/*.ll