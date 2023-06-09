void testwhile(int x){
    int i = 0;
    int a = 0;
    while(i < 10){
        if (i == 7){
            a = x;
        }

        if (a != 0){
            break;
        }
        i++;
    }
}
