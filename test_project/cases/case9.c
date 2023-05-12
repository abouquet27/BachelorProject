#include <stdio.h>

void recursionFunc(int x){
    if(x > 0){
        printf("Need some recusion");
        recursionFunc(x - 1);
    }
    else{
        return;
    }
}