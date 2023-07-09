#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>
#include <iso646.h>

int main(int argc, char const *argv[])
{
    int a;
    while (a)
    {

        printf("Enter a(int)\n");
        scanf("%d", &a);
        int _a = a;
        while (_a)
        {
            int digit = _a % 10;
            if (1 == digit % 2) // filter
            {
                printf("%d ", digit);
            }
            _a /= 10;
        }
        printf("\n");
    }

    return 0;
}