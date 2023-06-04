#include <stdio.h>

double result_x = 1.6;

void recursionFunction1(int x){
    if (x > 0){
        printf("recursion needed");
        recursionFunction1(x-1);
    } 
}