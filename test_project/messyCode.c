void  messyFunction(int x, int a, int b, int c, int d, int e, int f){
    int result = x + 4;
    result = a*b ;
    result = c*result -d;
    result = (f-e + 34)*result;

    if (result > 100) {
        result = result - 100;
    }
    else {
        result = result + 100;
    }
}