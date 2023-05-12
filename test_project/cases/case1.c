#include <stdio.h>

void  check(int a){
  int x = 0;
  int b = 19;
  if (a >= 5) {
    x = 5;
  }
  else {
    x = 10;
  }

  int y = x + a;

}

// The pass should output 1 has correct value (using the matchValue function) and 1 using the true function:
// => q(6,c) = beta*q(7,c) + beta*q(10,c) + c(a>= 5, a)
// => q(6,c) = 0 + 0 + 1