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
    int a, *pa;
    a = 3;
    pa = &a;

    printf("a = %d\n", a);
    printf("pa = %p\n", (int *)pa);

    return 0;
}