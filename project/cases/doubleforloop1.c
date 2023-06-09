double result_x = 1.6;

void doubleforLoop1(int x){
    int y = 0;
    int a = 0;
    for (int i = 0; i < x; i++) {
        for (int j = 0; j < x; j++) {
            y = y + 1;
            a = a + 1;
        }
    }
}