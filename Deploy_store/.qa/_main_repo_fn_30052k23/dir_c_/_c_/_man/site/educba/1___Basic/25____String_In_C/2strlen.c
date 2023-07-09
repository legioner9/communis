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
    char str_[] = "this string";
    printf("str_ = %s\n", str_);
    long int len = strlen(str_); // show WRITNG!!! ptrs
    printf("strlen(str_) = %ld\n", len);
    return 0;
}