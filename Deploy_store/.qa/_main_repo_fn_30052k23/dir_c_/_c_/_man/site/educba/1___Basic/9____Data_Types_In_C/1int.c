// #### #Data Types In C

#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>
#include <iso646.h>
#include <stdlib.h>
#include <time.h>
#include <limits.h>
#include <float.h>

// lc_

#define N 6

int main(int argc, char const *argv[])
{
    int a = 1;
    printf(" %d is the int value \n", a);
    unsigned short int x = -3278989; 
    // unsigned conversion from «int» to «short unsigned int» changes value from «-3278989» to «63347»
    printf(" %u is the unsigned short int value \n", x);
    /* code */
    return 0;
}