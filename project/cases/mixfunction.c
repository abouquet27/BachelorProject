
int check(int x){
    if (x > 0){
        return 1;
    }
    else{
        return 0;
    }
}

int mixFunction(int a, int b){
    int i = 0;
    int j = 0;
    while (a < 10){
        if (a > 0){
            mixFunction(a - 1, b);
        }
        else{
            check(a);
        }
        i++;
    }
    if (b > 0){
        mixFunction(a, b - 1);
    }
    else{
        b = 0;
    }
    j++;

    return i + j;
}

// The pass should output 1.0 when using the matchValue function and 1.0 when using the true function on argument x (check)
// The pass should output 3.3712 when using the matchValue function and 4.4032 when using the true function on argument a (mixFunction)
// The pass should output 1.032 when using the matchValue function and 3.784 when using the true function on argument b (mixFunction)

