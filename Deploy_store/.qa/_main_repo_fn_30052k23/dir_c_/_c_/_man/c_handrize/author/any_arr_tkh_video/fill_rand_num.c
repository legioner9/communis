#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>
#include <iso646.h>
#include <stdlib.h>
#include <time.h>

#define N 10

void fill_rand_num(int max_value, int argc, int arr[]);
void pr_int_arr(int argc, int arr[]);

int main(int argc, char const *argv[])
{
    int A[N] = {};
    fill_rand_num(1000, N, A);
    pr_int_arr(N, A);

    


    return 0;
}

void fill_rand_num(int max_value, int argc, int arr[])
{
    srand(time(NULL));
    for (int i = 0; i < argc; i++)
    {
        arr[i] = rand() % max_value;
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

