//## ###Clock() In C

#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>
#include <iso646.h>
#include <stdlib.h>
#include <time.h>

//lc_

#define N 6

int main(int argc, char const *argv[])
{
    clock_t start,end;
    start = clock();
    // perform work
    end = clock();
    printf("clock_t size = %ld\n", sizeof(clock_t));
    return 0;
}
