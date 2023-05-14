#include <stdio.h>

void recursionFunc(int x){
    if (x > 0){
        printf("recursion needed");
        recursionFunc(x-1);
    } 
}