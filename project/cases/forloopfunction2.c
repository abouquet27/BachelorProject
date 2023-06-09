double result_x = 1.0;

void forloopfunction2(int x){
    int y = 0;
    int a = 0;
    for (int i = 0; i < x; i++) {
        y = y + 1;
        a = a + 1;
    }
}

// The pass should output 1.0 when using the matchValue function and 1.0 when using the true function on argument x