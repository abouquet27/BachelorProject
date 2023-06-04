double result_tab = 0.0;
double result_size = 1.6;

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