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

void hanoi_lc_0_hight_from_to(int n, int i, int k);

int main(int argc, char const *argv[])
{
    hanoi_lc_0_hight_from_to(4, 1, 2);
    return 0;
}

void hanoi_lc_0_hight_from_to(int n, int i, int k)
{
    // i issue , k dist , n value of piramid
    if (1 == n)
        printf("n = %d : from %d to %d\n", n, i, k);
    else
    {
        int tmp = 6 - i - k;
        hanoi_lc_0_hight_from_to(n - 1, i, tmp);
        printf("n = %d : from %d to %d\n", n, i, k);
        hanoi_lc_0_hight_from_to(n - 1, tmp, k);
    }
}

// void hanoi(int n, int i, int k)
// {
//     if (n == 1)
//         printf("Move disk 1 from pin %d to %d.\n", i, k);
//     else
//     {
//         int tmp = 6 - i - k;
//         hanoi(n-1, i, tmp);
//         printf("Move disk %d from pin %d to %d.\n", n, i, k);
//         hanoi(n-1, tmp, k);
//     }
// }
