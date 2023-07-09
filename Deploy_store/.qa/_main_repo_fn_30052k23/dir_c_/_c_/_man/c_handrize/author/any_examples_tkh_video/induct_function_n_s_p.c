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

        int n = 0;
        int s = 0;
        int p = 1;

        while (_a)
        {
            int digit = _a % 10;

            n += 1;
            s += digit; // f(x)
            p *= digit;

            printf("%d ", digit);
            _a /= 10;
        }

        printf("\nn = %d, s = %d, p = %d\n", n, s, p);
    }

    return 0;
}