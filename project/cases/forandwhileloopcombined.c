
void forandwhileloopcombinedfunction(int* tab, int size){
    int i = 0;

    while(tab[i] != 0){
        int j = 0;
        for(j = 0; j < size; j++){
            tab[i] = tab[i] + tab[j];
        }
        i++;
    }
}

// The pass should output 1.00 when using the matchValue function and 1.6 when using the true function on argument tab
// The pass should output 0.6 when using the matchValue function and 1.6 when using the true function on argument size