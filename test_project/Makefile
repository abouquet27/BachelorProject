
#compiler
CC = clang

#compiler flags
PASSFLAGS = -std=c++17 -g3 -shared  -Wl,-headerpad_max_install_names -undefined dynamic_lookup
CASESFLAGS = 
export cs = case1

INCLUDES = -I /usr/local/opt/llvm/include

cases = case1 case2 case3 case4 case5 case6 case7 case8 case9 messyCode

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

clean: 
	rm cases/*.ll