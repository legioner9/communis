//## ###Clock() In C

#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>
#include <iso646.h>
#include <stdlib.h>
#include <time.h>

//lc_

#define N 6

int fib(int n){
    if(1>=n)
    return n;
    return fib(n-1)+fib(n-2);
}

int main(int argc, char const *argv[])
{
    clock_t t_s,t_e;
    t_s = clock();
    fib(45);
    t_e = clock() - t_s;

    int time_consumed = (t_e - t_s)*1000/CLOCKS_PER_SEC;

    printf("fib() took %d miliseconds for execution of some value ...\n", time_consumed);
    return 0;
}
