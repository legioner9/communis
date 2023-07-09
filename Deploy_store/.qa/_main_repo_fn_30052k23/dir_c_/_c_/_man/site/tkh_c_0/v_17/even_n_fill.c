#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>
#include <iso646.h>

#define N 6 // N only even

int main(int argc, char const *argv[])
{
    int A[N] = {}; // 0 0 0 0 0 0

    // for (size_t i = 0; i < N; i++)
    // {
    //     A[N - i - 1] = i; // 5 4 3 2 1 0
    // }

    // for (size_t i = 0; i < N; i++)
    // {
    //     A[i] = i % 2; // 0 1 0 1 0 1
    // }

    for (size_t i = 0; i < N / 2; i++)
    {
        A[2 * i] = i; // 0 0 1 0 2 0
    }

    for (size_t i = 0; i < N / 2; i++)
    {
        A[2 * i + 1] = N / 2 + i; // 0 3 0 4 0 5
    }

    for (size_t i = 0; i < N; i++)
    {
        printf("%d ", A[i]); // if N is even 0 3 1 4 2 5 or N is odd 0 3 1 4 2 5 0
    }
    printf("\n");

    return 0;
}