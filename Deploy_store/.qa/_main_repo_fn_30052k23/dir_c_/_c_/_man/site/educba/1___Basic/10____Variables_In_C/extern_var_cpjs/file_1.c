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

#define N 6

extern int a;
extern char c;

void fn_from_file_1()
{
    printf("a=%d, c=%c\n", a, c);
}