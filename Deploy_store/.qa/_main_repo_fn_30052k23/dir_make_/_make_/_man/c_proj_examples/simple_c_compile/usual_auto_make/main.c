#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>
#include <iso646.h>
#include <stdlib.h>
#include <time.h>

//

#include "lc_0.h"
// void fill_rand_lc_0_MxV_Ac_Ar(int max_value, int argc, int arr[]);
// void pr_int_arr_lc_0_Ac_Ar(int argc, int arr[]);
// int is_prime_lc_0_Chint(int a);

#define N 6

int main(int argc, char const *argv[])
{
    int array[N] = {};
    fill_rand_lc_0_MxV_Ac_Ar(100, N, array);
    pr_int_arr_lc_0_Ac_Ar(N, array);
    printf("%d \n", is_prime_lc_0_Chint(array[1]));
    return 0; 
}
