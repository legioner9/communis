#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>
#include <iso646.h>

int main(int argc, char const *argv[])
{
    int a = 1;
    while (a)
    {

        printf("Enter a(int)\n");
        scanf("%d", &a);
        int _a = a;

        int max;

        while (_a)
        {
            int digit = _a % 10;

            max = digit > max ? digit : max;

            printf("%d ", digit);
            _a /= 10;
        }

        printf("\nMax = %d\n", max);
    }

    return 0;
}