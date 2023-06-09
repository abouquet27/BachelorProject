//double result_tab = 0.0;
//double result_size = 1.6;

void doublewhileloopfunction(int* tab, int size) {
    int i = 0;
    int j = 0;
    while (i < size) {
        while (j < size) {
            tab[i] = tab[i] + tab[j];
            j++;
        }
        i++;
    }
}

// The pass should output 0.0 when using the matchValue function and 1.6 when using the true function on argument tab
// The pass should output 1.6 when using the matchValue function and 1.6 when using the true function on argument size