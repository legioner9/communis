#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>
#include <iso646.h>
#include <stdlib.h>
#include <time.h>

#define N_ 30 // N only even

int N = N_;

void rand_arr_0_1000(int argc, int arr[]);

void pr_int_arr(int argc, int arr[]);

void filter_ints(int argc, int arr[]);

int main(int argc, char const *argv[])
{
    srand(time(NULL));
    int A[N_] = {};

    rand_arr_0_1000(N, A);
    pr_int_arr(N, A);

    filter_ints(N, A);
    pr_int_arr(N, A);
}

void rand_arr_0_1000(int argc, int arr[])
{
    srand(time(NULL));
    for (int i = 0; i < argc; i++)
    {
        arr[i] = rand() % 1000;
    }
}

void pr_int_arr(int argc, int arr[])
{
    for (int i = 0; i < argc; i++)
    {
        printf("%4d ", arr[i]);
    }
    printf("\n");
}

void filter_ints(int argc, int arr[])
{
    int quantity = 0;
    for (int i = 0; i < argc; i++)
    {
        if (arr[i] < 500 and 0 == arr[i] % 5)
        {
            printf("%4d", arr[i]);
            quantity++;
        }
    }

    for (int i = 0; i < argc; i++)
    {
        if (arr[i] < 500 and 0 == arr[i] % 5)
            arr[i] = quantity;
    }
    printf("\n");
}
