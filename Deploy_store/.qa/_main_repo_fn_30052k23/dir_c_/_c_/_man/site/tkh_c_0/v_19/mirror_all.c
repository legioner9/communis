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

void mirror_all(int argc, int arr[])
{
    for (int i = 0; i < (argc / 2 + argc % 2); i++)
    {
        int tmp;
        tmp = arr[argc - 1 - i];
        arr[argc - 1 - i] = arr[i];
        arr[i] = tmp;
    }
}

int main(int argc, char const *argv[])
{

    int A[N_] = {};

    fill_arr(N, A);

    printf("A[]:\n");
    pr_int_arr(N, A);

    printf("mirror_all: \n");
    mirror_all(N, A);

    printf("A[]:\n");
    pr_int_arr(N, A);

    return 0;
}