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
    char str[32];
    int n;
    int radix;
    while (1)
    {

        printf("Enter N(int):\n");
        scanf("%d", &n);
        if (0 == n)
            break;
        printf("Enter radix(int):\n");
        scanf("%d", &radix);
        itoa_st(n, str, radix);
        printf("%s", str);
    }

    return 0;
}