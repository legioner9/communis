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
    long nc = 0;

    printf("enter string for count:\n");

    while (getchar() != '\n')

        ++nc;

    printf("srr_length = %ld\n", nc);
    return 0;
}

// int main()
// {
//     char str;
//     int i;
//     printf("Введите строку: ");

//     for (i = 0; getchar() != '\n'; i++)
//     ;
//     printf("str.length = %d\n", i);
// }