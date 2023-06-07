int switchCaseFun(int x){
    int y = 1;
    int a = 1;
    switch (x%3) {
        case 0:
            y = y + 1;
            a = a + 1;
            break;
        case 1:
            y = y*2;
            a = a-1;
            break;
        case 2:
            y = y*y;
            a = a*2;
    }

    return a*y + x; 
}