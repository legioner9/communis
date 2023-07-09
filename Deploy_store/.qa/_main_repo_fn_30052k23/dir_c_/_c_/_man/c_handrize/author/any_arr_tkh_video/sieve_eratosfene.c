#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>
#include <iso646.h>

#define N 20 //

int main(int argc, char const *argv[])
{
    int Sieve[N] = {0};

    for (int i = 2; i * i < N; ++i)
        if (0 == Sieve[i])
            for (int j = i * i; j < N; j += i)
                Sieve[j] = 1;

    for (int i = 0; i < N; i++)
    {
        printf("%3d", i);
    }
    printf("\n");
    for (int i = 0; i < N; i++)
    {
        printf("%3d", Sieve[i]);
    }
    printf("\nSeries of prime numbers 0 to %d :\n", N - 1);

    for (int i = 0; i < N; i++)
    {
        if (0 == Sieve[i])
            printf("%3d", i);
    }

    printf("\n");

    return 0;
}