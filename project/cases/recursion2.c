//double result_x_recursionFun = 1.6;
//double result_y_start = 1.6;


void recursionFun(int x){
  if (x > 0){
    recursionFun(x-1);
  }
  else{
    return;
  }
}

void start(int y){
    int a = 0;
    if (y%2 == 0){
      recursionFun(y);
    }
    else{
      a = 2;
    }

    return;
}

// The pass should output 1.6 when using the matchValue function and 1.6 when using the true function on argument x (recursionFun)
// The pass should output 1.6 when using the matchValue function and 1.6 when using the true function on argument y (start)

