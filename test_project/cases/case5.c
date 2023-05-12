__attribute__((used)) void check(int a){
  int x = 0;
  int b = 19;
  if (a >= 5) {
    x = 5;
  }
  
  if (a < 10) {
      x = 10;
  }
  else {
      x = 20;
  }


  int y = x + a;

}