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
    char str_[30];
    printf("enter str length < 30:");
    fgets(str_, sizeof(str_), stdin);
    puts(str_);
    return 0;
}