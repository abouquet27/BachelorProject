void whileloopfunction(int x){
    int tab[13];
    int index = 0;
    if (x %2 == 0){
        index = 0;
    }
    else{
        index = 1;
    }
    int sum = 0;
    while (index <13){
        sum = sum + tab[index];

        if (index %2 ==0){
            index = index + 1;
        } else {
            index = index + 2;
        }
    }
}