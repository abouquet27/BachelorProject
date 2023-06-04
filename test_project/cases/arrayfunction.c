double result_x = 1.6;
double result_y = 1.6;

void tabFunction(int x, int* tab){

    int a = 0;
    if (tab[x] == a){
        a = 1;
        tabFunction(x-1, tab);
    }

    return;
    
}