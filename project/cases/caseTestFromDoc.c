#include <stdio.h>
#include <string.h>

double result_arg = 1.6;
double result_argv = 0.6;

int main(int arg, char **argv) {
    int r = 1, argc = 1;
    // if (arg < argc)
    // if (strcmp(argv[arg], "-n") == 0) {
    //     r = 0; ++arg;
    // }
    for (; arg < argc; ++arg){
        for (int i = 0; argv[arg][i] != 0; ++i){
            putchar(argv[arg][i]);
        }
    }
    // if (r){
    //     putchar('\n');
    // }

}

// The pass should output 1.6 when using the matchValue function and 1.6 when using the true function on argument arg
// The pass should output 0.6 when using the matchValue function and 1.6 when using the true function on argument argv
