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
    char str_cmp[] = "this string";
    printf("str_cmp = %s\n", str_cmp);

    printf("strcmp(str_cmp, str_) = %d\n", strcmp(str_cmp, str_));

    // char str_[] = "this string";
    printf("str_ = %s\n", str_);
    char str_cmp_[] = "this string_";
    printf("str_cmp_ = %s\n", str_cmp_);

    printf("strcmp(str_cmp_, str_) = %d\n", strcmp(str_cmp_, str_));

    printf("str_ = %s\n", str_);
    char str_cm[] = "this strin";
    printf("str_cm = %s\n", str_cm);

    printf("strcmp(str_cm, str_) = %d\n", strcmp(str_cm, str_));
    return 0;
}