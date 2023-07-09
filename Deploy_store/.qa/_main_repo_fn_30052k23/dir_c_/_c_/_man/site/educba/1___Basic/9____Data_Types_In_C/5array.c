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
    char str[] = {'q', 't', 'r'};
    for (size_t i = 0; i < 3; i++)
    {
        printf("%s", *(&str + i));
    }
    printf("\n");

    return 0;
}