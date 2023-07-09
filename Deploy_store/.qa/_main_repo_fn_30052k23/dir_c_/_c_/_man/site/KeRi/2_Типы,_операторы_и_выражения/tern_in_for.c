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
    /* code */
    int aqt, wdl;
    printf("enter all_quantity(int), width_line(int) :\n");
    scanf("%d%d", &aqt, &wdl);
    for (int i = 1; i < aqt + 1; i++)
        printf("%d%c", i, (i % wdl == 0) ? '\n' : ' ');
    printf("\n");

    // enter all_quantity(int), width_line(int) :
    // 12 5
    // 1 2 3 4 5
    // 6 7 8 9 10
    // 11 12

    return 0;
}