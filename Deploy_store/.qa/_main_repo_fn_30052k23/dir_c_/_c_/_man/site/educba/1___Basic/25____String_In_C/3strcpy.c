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
    // char str_long[20];
    char str_short[5];

    printf("str_ = %s\n", str_); //str_ = this string

    // strcpy(str_long, str_);
    strcpy(str_short, str_); // copy with CAT!!! from , EXPAND!!! to obj

    printf("str_ = %s\n", str_);//str_ = string
    // printf("str_long = %s\n", str_long);
    printf("str_short = %s\n", str_short);

    printf("strlen(str_) = %ld\n", strlen(str_));
    // printf("strlen(str_long) = %ld\n", strlen(str_long));
    printf("strlen(str_short) = %ld\n", strlen(str_short));
    return 0;
}