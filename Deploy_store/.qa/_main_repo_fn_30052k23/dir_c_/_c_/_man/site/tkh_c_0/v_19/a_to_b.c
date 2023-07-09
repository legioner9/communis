#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>
#include <iso646.h>

#define N_ 6 // N only even

int N = N_;

void pr_int_arr(int argc, int arr[])
{
    for (int i = 0; i < argc; i++)
    {
        printf("%d ", arr[i]);
    }
    printf("\n");
}

void fill_arr(int argc, int arr[])
{
    for (int i = 0; i < N; i++)
    {
        arr[i] = i;
    }
}

void copy_arr_to_brr_rev(int argc, int arr[], int brr[])
{
    for (int i = 0; i < N; i++)
    {
        brr[i] = arr[N - 1 - i];
    }
}

int main(int argc, char const *argv[])
{

    int A[N_] = {};
    int B[N_] = {};

    fill_arr(N, A);

    printf("A[]:\n");
    pr_int_arr(N, A);

    printf("B[]:\n");
    pr_int_arr(N, B);

    printf("copy_arr_to_brr_rev:\n");
    copy_arr_to_brr_rev(N, A, B);

    printf("B[]:\n");
    pr_int_arr(N, B);

    return 0;
}