
#compiler
CC = clang

#compiler flags
PASSFLAGS = -std=c++17 -g3 -shared  -Wl,-headerpad_max_install_names -undefined dynamic_lookup
CASESFLAGS = 
export cs = caseTestFromDoc
EXPORT PATH := /usr/local/opt/llvm/bin:$PATH"

INCLUDES = -I /usr/local/opt/llvm/include

cases = basicCondition1 basicCondition2 basicCondition3 basicCondition4 basicCondition5
cases += arrayfunction forloopfunction1 forloopfunction2 recursion1 recursion2 recursion3
cases += caseTestFromDoc
all: $(cases) 

$(cases): 
	$(MAKE) case cs=$@

pass: 
	$(CC) $(PASSFLAGS) $(INCLUDES) -o firstquerypass.so FirstQueryPass.cpp 
	@echo  Pass compiled successfully

case: pass
	@echo  Compiling case $(cs)
	$(CC) -emit-llvm -c -S -Xclang -disable-O0-optnone -o cases/$(cs).ll cases/$(cs).c
	opt -p=mem2reg -S -o cases/$(cs).ll cases/$(cs).ll
	opt -load firstquerypass.so -firstquerypass  -enable-new-pm=0 cases/$(cs).ll
	@echo  "Case $(cs) compiled successfully\n"

coreutilscase: pass
	@echo  Compiling coreutils $(cs)
	$(CC) -emit-llvm -c -S -Xclang -disable-O0-optnone -o coreutils/src/$(cs).ll coreutils/src/$(cs).c
	opt -p=mem2reg -S -o coreutils/src/$(cs).ll coreutils/src/$(cs).ll
	opt -load firstquerypass.so -firstquerypass  -enable-new-pm=0 coreutils/src/$(cs).ll
	@echo  "Coreutils $(cs) compiled successfully\n"

clean: 
	rm cases/*.ll