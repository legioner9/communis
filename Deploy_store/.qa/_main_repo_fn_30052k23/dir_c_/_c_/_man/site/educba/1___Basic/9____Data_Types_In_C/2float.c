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
    printf("max float value allowed in positive range   :   %g\n", (float)FLT_MAX);
    printf("max float value allowed in negative range   :   %g\n", (float)-FLT_MAX);
    printf("max double value possible in positive range :   %g\n", (double)DBL_MAX);
    printf("max double value possible in negative range :  %g\n", (double)-DBL_MAX);
    return 0;
}