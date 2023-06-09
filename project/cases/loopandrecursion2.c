//double result_x = 2.176;

void loopandrecursion2(int x){
    int i = 0;
    int j = 0;
    while (x < 10){
        if (x > 0){
            loopandrecursion2(x - 1);
        }
        else{
            x = 0;
        }
        i++;
    }
}

// The pass should output 2.176 when using the matchValue function and 2.176 when using the true function on argument x