void basicCondition3(int a){
  int x = 0;
  int b = 19;
  if (b >= 5) {
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

// The pass should output 0.6 has correct value (using the matchValue function) and 1.6 using the true function on argument a
