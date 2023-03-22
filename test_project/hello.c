#include <stdio.h>

void  check(int a){
  int x = 0;
  if (a >= 5) {
    printf("a is greater than 5");
    x = 5;
  }
  else {
    x = 10;
  }

  int y = x + a;

}