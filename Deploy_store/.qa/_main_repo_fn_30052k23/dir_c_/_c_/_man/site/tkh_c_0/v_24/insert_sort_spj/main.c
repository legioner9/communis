#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>
#include <iso646.h>
#include <stdlib.h>
#include <time.h>

#define ALLOCATE_SIZE 6
#define SIZE 5

#include "lib/lc_0.h"
// void fill_rand_lc_0_MxV_Ac_Ar(int max_value, int argc, int arr[]);
// void pr_int_arr_lc_0_Ac_Ar(int argc, int arr[]);
// int is_prime_lc_0(int a);
// void insert_sort_lc_0_AcMxV_Ar(int N, int A[]);
int input_arr(int A[], int max_size)
{
    int top = 0;
    while (true)
    {
        int x;
        scanf("%d", &x);
        if (0 == x or top == max_size)
            break;
        A[top] = x;
        top++;
    }
    return top;
}

void revers_int_arg(int a, int b)
{
    int tmp = b;
    b = a;
    a = tmp;
}

void insert_sort_up(int N, int A[])
{
    for (size_t i = 1; i < N; i++)
    {
        int k = i;
        while (k > 0 and A[k - 1] > A[k])
        {
            int tmp = A[k - 1];
            A[k - 1] = A[k];
            A[k] = tmp;
            // revers_int_arg(A[k - 1], A[k]);
            k--;
        }
    }
}

void insert_sort_down(int N, int A[])
{
    for (size_t i = N - 1; i > 0; i--)
    {
        int k = i;
        while (k < N and A[k - 1] < A[k])
        {
            printf("i = %d, k = %d\n", i, k);
            int tmp = A[k];
            A[k] = A[k - 1];
            A[k - 1] = tmp;
            // revers_int_arg(A[k - 1], A[k]);
            k++;
        }
    }
}

int main(int argc, char const *argv[])
{
    int A[SIZE];
    printf("start UP sort:\n");
    fill_rand_lc_0_MxV_Ac_Ar(100, SIZE, A);

    pr_int_arr_lc_0_Ac_Ar(SIZE, A);

    insert_sort_up_lc_0_AcMxV_Ar(SIZE, A);

    pr_int_arr_lc_0_Ac_Ar(SIZE, A);

    printf("start DOWN sort:\n");
    fill_rand_lc_0_MxV_Ac_Ar(100, SIZE, A);

    pr_int_arr_lc_0_Ac_Ar(SIZE, A);

    insert_sort_down_lc_0_AcMxV_Ar(SIZE, A);

    pr_int_arr_lc_0_Ac_Ar(SIZE, A);

    return 0;
}
