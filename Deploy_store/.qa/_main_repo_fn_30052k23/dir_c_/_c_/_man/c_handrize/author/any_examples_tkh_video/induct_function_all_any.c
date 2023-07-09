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

        bool any = false;
        bool all = true;

        while (_a)
        {
            int digit = _a % 10;

            any = any or (digit < 5);
            all = all and (digit < 5); // f(x)

            printf("%d ", digit);
            _a /= 10;
        }

        printf("\nany < 5 = %s , all < 5 = %s\n", any ? "true" : "false", all ? "true" : "false");
    }

    return 0;
}