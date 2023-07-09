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

int fib_dinamic(int n)
{
    int Fib[n + 1];
    Fib[0] = 0;
    Fib[1] = 1;
    for (size_t i = 2; i < n + 1; i++)
    {
        /* code */
        Fib[i] = Fib[i - 2] + Fib[i - 1];
    }
    return Fib[n];
}

#define N 6

int main(int argc, char const *argv[])
{
    for (int n = 0; n < 47; n++)
    {
        /* code */
        clock_t time1 = clock();
        int res = fib_dinamic(n);
        clock_t time2 = clock();
        int delta_ms = (time2 - time1) * 1000 / CLOCKS_PER_SEC;
        printf("fib(%d)=%d time=%d\n", n, res, delta_ms);
    }
    for (int n = 0; n < 47; n++)
    {
        /* code */
        clock_t time1 = clock();
        int res = fib_lc_0_int(n);
        clock_t time2 = clock();
        int delta_ms = (time2 - time1) * 1000 / CLOCKS_PER_SEC;
        printf("fib(%d)=%d time=%d\n", n, res, delta_ms);
    }
}