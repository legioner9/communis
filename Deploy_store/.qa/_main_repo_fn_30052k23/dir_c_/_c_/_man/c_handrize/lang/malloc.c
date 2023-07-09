#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>
#include <iso646.h>
#include <stdlib.h>
#include <time.h>
#include <limits.h>
#include <float.h>
#include <string.h>

// lc_

void npt(int *pt);

int main(int argc, char const *argv[])
{
    int N;
    printf("Enter size bit: ");
    scanf("%d", &N);
    // allockation memory
    int *A = (int *)malloc(N * sizeof(int));

    npt(A);
    for (size_t i = 0; i < N; i++)
    {
        A[i] = i;
        if (100 > N)
            printf("%d\n", A[i]);
    }
    free(A);
    return 0;
}

void npt(int *pt)
{
    if (NULL == pt)
    {
        printf("alloc FAILs");
        exit(1);
    }
}