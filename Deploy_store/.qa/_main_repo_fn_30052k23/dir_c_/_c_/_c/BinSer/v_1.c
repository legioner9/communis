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

#define N 6



int main(int argc, char const *argv[])
{
    int n;
    printf("enter N(int) :\n");
    scanf("%d", &n);
    printf("n = %d\n", n);
    int count = 0;
    int m = n;
    while (m > 0)
    {
        printf("%d", m % 2);
        m /= 2;
        count++;
    }
    printf("\n");

    int *res = (int *)malloc(count * sizeof(int));

    m = n;
    // while (m > 0)
    // {
    //     printf("m %% 2 = %d", m % 2);

    //     res[count] = m % 2;
    //     printf("res[%d]=%d\n", count, res[count]);
    //     --count;
    //     m /= 2;
    // }
    for (int i = count - 1; i >= 0; i--)
    {
        res[i] = m % 2;
        printf("res[%d]=%d\n", i, res[i]);
        m /= 2;
    }

    printf("\n");

    // printf("res[0] = %d", res[0]);
    for (int i = 0; i < count; i++)
    {
        printf("%d", res[i]);
    }

    /* code */
    return 0;
}