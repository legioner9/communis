#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>
#include <iso646.h>
#include <stdlib.h>
#include <time.h>

#define N_ 6 // N only even

int main(int argc, char const *argv[])
{
    int N, k26 = 0, k13 = 0, k2 = 0, k1 = 0;
    printf("Enter arr length: ");
    scanf("%d", &N);
    printf("Enter arr (int) (int) ... : ");
    for (int i = 0; i < N; i++)
    {
        int a;
        scanf("%d", &a);

        if (0 == a % 26)
            k26 += 1;
        else if (0 == a % 13)
            k13 += 1;
        else if (0 == a % 2)
            k2 += 1;
        else
            k1 += 1;
    }

    printf("k26 = %d, k13 = %d, k2 = %d, k1 = %d\n", k26, k13, k2, k1);

    int res = k26 * (k13 + k2 + k1) + k13 * k2 + k26 * (k26 - 1) / 2;
    printf("Ansver : %d\n pair", res);
    // 2 6 13 39 : Ansver 4

    return 0;
}