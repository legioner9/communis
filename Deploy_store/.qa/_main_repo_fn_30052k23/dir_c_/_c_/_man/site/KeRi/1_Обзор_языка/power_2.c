#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>
#include <iso646.h>
#include <stdlib.h>
#include <time.h>
#include <limits.h>
#include <float.h>
#include <string.h>

// lc_

#define N 6

int power(int base, int rate);

int main(int argc, char const *argv[])
{
    printf("pow(3,3) = %d, pow(-3,3) = %d, pow(3,0) = %d\n", power(3, 3), power(-3, 3), power(3, 0));
    return 0;
}

int power(int base, int rate)
{
    int p;
    for (p = 1; 0 < rate; --rate)
        p *= base;
    return p;
}