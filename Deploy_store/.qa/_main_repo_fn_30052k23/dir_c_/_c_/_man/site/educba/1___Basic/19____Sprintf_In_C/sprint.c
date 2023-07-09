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
    int n = 5;
    char output[50];
    sprintf(output, "\"number = %d\"", n);
    printf("After sprintf: %s\n", output);
    return 0;
}