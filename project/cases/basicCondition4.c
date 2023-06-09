double result_a = 1.6;

void  basicCondition4(int a){
  int x = 0;
  int b = 19;
  if (a >= 5) {
    x = 5;
    if (a < 10) {
      x = 10;
    }
    else {
      x = 20;
    }
  }
  else {
    x = 10;
  }

  int y = x + a;

}

// The pass should output 1.6 has correct value (using the matchValue function) and 1.6 using the true function: