#include <stdio.h>
#include <string.h>

int main(int argc, char **argv) {
    int r = 1, arg = 1;
    if (arg < argc)
    if (strcmp(argv[arg], "-n") == 0) {
        r = 0; ++arg;
    }
    for (; arg < argc; ++arg){
        for (int i = 0; argv[arg][i] != 0; ++i){
            putchar(argv[arg][i]);
        }
    }
    if (r){
        putchar('\n');
    }

}

