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

int main(int argc, char const *argv[])
{
    printf("sizeof(char) = %ld\n", sizeof(char));
    printf("sizeof(int) = %ld\n", sizeof(int));
    printf("sizeof(float) = %ld\n", sizeof(float));
    printf("sizeof(double) = %ld\n", sizeof(double));

    printf("sizeof(long int) = %ld\n", sizeof(long int));
    printf("sizeof(long double) = %ld\n", sizeof(long double));

    printf("sizeof(shot int) = %ld\n", sizeof(short int));

    printf("sizeof(unsigned int) = %ld\n", sizeof(unsigned int));

    return 0;
}