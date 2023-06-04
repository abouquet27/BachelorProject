double result_x_recursionFun = 1.6;
double result_y_main = 1.6;


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