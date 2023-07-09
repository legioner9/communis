#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>
#include <iso646.h>
#include <stdlib.h>
#include <time.h>

//

#include "lib/lc_0.h"
#include "lib/lc_1.h"
// void fill_rand_lc_0_MxV_Ac_Ar(int max_value, int argc, int arr[]);
// void pr_int_arr_lc_0_Ac_Ar(int argc, int arr[]);
// int is_prime_lc_0(int a);

#define N 6

int main(int argc, char const *argv[])
{
    int a;
    int *p_1 = &a - 50000;
    int *p_2 = &a + 50000;

    printf("p_2 - p_1 = %d\n", p_2 - p_1);// p_2 - p_1 = 4

    return 0;
}
