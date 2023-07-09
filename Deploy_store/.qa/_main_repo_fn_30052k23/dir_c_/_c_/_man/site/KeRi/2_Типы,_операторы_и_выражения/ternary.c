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
    int a, b;
    printf("enter a(int), b(int): \n");
    scanf("%d%d", &a, &b);
    (a > b) ? printf("a > b") : printf("a < b");
    printf("\n");
    return 0;
}