#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>
#include <iso646.h>
#include <stdlib.h>
#include <time.h>
#include <limits.h>
#include <float.h>
#include <string.h>

//lc_
#include "head_with_static.h"

#define N 6

int fn(int argc, char const *argv[])
{
    variable = 100;
    printf("variable in fn() = %d\n", variable);
    return 0;
}