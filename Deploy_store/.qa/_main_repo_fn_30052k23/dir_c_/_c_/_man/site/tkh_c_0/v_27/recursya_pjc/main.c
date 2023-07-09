#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>
#include <iso646.h>
#include <stdlib.h>
#include <time.h>

//

#include "lib/lc_0.h"
// void fill_rand_lc_0_MxV_Ac_Ar(int max_value, int argc, int arr[]);
// void pr_int_arr_lc_0_Ac_Ar(int argc, int arr[]);
// int is_prime_lc_0(int a);



#define N 6

void matryoshka(int n);

int main(int argc, char* argv[])
{
    matryoshka(7);

    return 0;
}

void matryoshka(int n)
{
    if (n == 1)
        printf(" Last matryoshka!!! %d\n", n);
    else
    {
        printf(" Top side of matryoshka %d\n", n);
        matryoshka(n-1);
        printf(" Bottom side of matryoshka %d\n", n);
    }
}
