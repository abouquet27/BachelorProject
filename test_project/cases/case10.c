void recursionFun(int x){
  if (x > 0){
    recursionFun(x-1);
  }
  else{
    return;
  }
}

void main(int y){
    int a = 0;
    if (y%2 == 0){
      recursionFun(y);
    }
    else{
      a = 2;
    }

    return;
}