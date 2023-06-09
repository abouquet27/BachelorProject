//double result_loopandrecursion = 0.816;

void loopandrecursion(int x){
    for (int i = 0; i < 10; i++){
        if (x > 0){
            loopandrecursion(x - 1);
        }
        else{
            x = 0;
        }
    }
}

// The pass should output 0.816 when using the matchValue function and 2.176 when using the true function on argument x