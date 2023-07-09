#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>
#include <iso646.h>

int main(int argc, char const *argv[])
{

    while (1)
    {

        printf("Enter a(int)\n");
        int a;
        scanf("%d", &a);

        if (0 == a)
            break;

        int divisor;
        for (divisor = 2; divisor * divisor <= a; ++divisor)
        {
            if (0 == a % divisor)
            break;
        }
        if (divisor * divisor > a)
        {
            printf("Variable %d is prime\n", a);
        }
        else if (divisor * divisor <= a)
        {
            printf("Variable %d have divisor %d\n", a, divisor);
        }
        else
            printf("Program Error\n");
    }

    return 0;
}