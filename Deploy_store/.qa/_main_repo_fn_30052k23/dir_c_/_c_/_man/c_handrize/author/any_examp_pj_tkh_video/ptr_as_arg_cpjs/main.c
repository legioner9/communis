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

int fn(int *a)
{
    return *a + 1;
}

int main(int argc, char const *argv[])
{
    int b = 10;
    printf("b = %d, fn(b) = %d\n", b, fn(&b));
    return 0;
}
