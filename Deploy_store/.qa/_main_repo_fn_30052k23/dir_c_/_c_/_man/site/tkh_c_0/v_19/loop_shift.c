#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>
#include <iso646.h>

#define N_ 7 // N only even

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

void shift_left(int argc, int arr[])
{
    int tmp = arr[0];
    for (int i = 1; i < argc; i++)
    {
        arr[i - 1] = arr[i];
    }
    arr[argc - 1] = tmp;
}

void shift_rigt(int argc, int arr[])
{
    int tmp = arr[argc - 1];
    for (int i = argc - 1; i > 0; i--)
    {
        arr[i] = arr[i - 1];
    }
    arr[0] = tmp;
}

int main(int argc, char const *argv[])
{

    int A[N_] = {};

    fill_arr(N, A);

    printf("A[]:\n");
    pr_int_arr(N, A);

    printf("shift_left: \n");
    shift_left(N, A);

    printf("A[]:\n");
    pr_int_arr(N, A);

    printf("shift_rigt: \n");
    shift_rigt(N, A);

    printf("A[]:\n");
    pr_int_arr(N, A);

    printf("shift_rigt: \n");
    shift_rigt(N, A);

    printf("A[]:\n");
    pr_int_arr(N, A);

    return 0;
}