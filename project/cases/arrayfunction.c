
void tabFunction(int x, int* tab){
    int a = 0;
    if (tab[x] == a){
        a = 1;
        tabFunction(x-1, tab);
    }
    return;
}

// The pass should output 1.6 when using the matchValue function and 1.6 when using the true function on argument x
// The pass should output 1.6 when using the matchValue function and 1.6 when using the true function on argument tab