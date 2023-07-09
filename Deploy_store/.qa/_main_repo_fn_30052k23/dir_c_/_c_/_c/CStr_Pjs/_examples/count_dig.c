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
    int c;
    int arr_count_dig[10] = {};

    printf("Before :\n");
    for (int i = 0; i < 10; i++)
        printf("arr_count_dig[%d] = %d\n", i, arr_count_dig[i]);

    while ((c = getchar()) != '\n')
        if (c >= '0' && c < '9')
            ++arr_count_dig[c - '0'];

    printf("After :\n");
    for (int i = 0; i < 10; i++)
        printf("arr_count_dig[%d] = %d\n", i, arr_count_dig[i]);
    return 0;
}