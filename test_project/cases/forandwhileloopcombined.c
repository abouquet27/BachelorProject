
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