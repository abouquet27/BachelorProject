#include <stdio.h>

void  check2(int a){
  int x = 0;
  int b = 19;
  if (b >= 5) {
    x = 5;
  }
  else {
    x = 10;
  }

  int y = x + a;

}

// The pass should output 0 has correct value (using the matchValue function) and 1 using the true function:
// => q(6,c) = beta*q(7,c) + beta*q(10,c) + c(b >= 0, b)
// => q(6,c) = 0 + 0 + 0 = 0
// the if condition line 6 does not depend on the value of a