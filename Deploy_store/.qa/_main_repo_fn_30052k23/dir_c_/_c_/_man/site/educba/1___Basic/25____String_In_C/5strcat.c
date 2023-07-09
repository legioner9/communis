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
    char sum_str[30]; // length sum > sum lengses !!!
    char str_[] = "this string";
    char add_str[] = " this adder to str_";

    printf("sum_str = %s\n", sum_str);
    printf("str_ = %s\n", str_);
    printf("add_str = %s\n", add_str);
    printf("\n");

    printf("strcat(sum_str, str_) = %s\n", strcat(sum_str, str_));
    printf("str_ = %s\n", str_);
    printf("sum_str = %s\n", sum_str);
    printf("\n");

    printf("strcat(sum_str, add_str) = %s\n", strcat(sum_str, add_str));
    printf("add_str = %s\n", add_str);
    printf("sum_str = %s\n", sum_str);
    printf("\n");

    // long int len = strlen(str_);
    // printf("strlen(str_) = %ld\n", len);
    return 0;
}