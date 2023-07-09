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

int fn(int *a)
{
    return *a + 1;
}

int main(int argc, char const *argv[])
{

    int A[10] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};

    printf("A = %p,\n *A = %d,\n A + 1 = %p,\n *(A + 1) = %d,\n\
 A[2] = %d \n",
           A, *A, A + 1, *(A + 1), A[2]);

    int b = 10;
    printf("b = %d,\n fn(b) = %d\n", b, fn(&b));

    return 0;
}