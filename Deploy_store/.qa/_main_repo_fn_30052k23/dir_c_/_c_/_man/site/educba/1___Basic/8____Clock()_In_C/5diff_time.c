#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>
#include <iso646.h>
#include <stdlib.h>
#include <time.h>

// lc_

#define N 6

int main(int argc, char const *argv[])
{
    time_t tm_1, tm_2;
    char get_inpt[258];
    double diff_sc;
    time(&tm_1);
    printf("Enter name of_fav food: ");
    scanf("%s", get_inpt);
    time(&tm_2);
    diff_sc = difftime(tm_2, tm_1);
    printf("It took almost %.2lf seconds_for typing the time...\n", diff_sc);
    return 0;
}