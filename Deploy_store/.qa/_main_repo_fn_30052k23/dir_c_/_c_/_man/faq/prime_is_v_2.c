#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>
#include <iso646.h>

bool is_prime(int a)
{
    for (int divisor = 2;
         divisor * divisor <= a;
         ++divisor)
    {
        if (0 == a % divisor)
        {
            return true;
        }
    }
    return false;
}

int main(int argc, char const *argv[])
{

    while (1)
    {

        printf("Enter a(int)\n");
        int a;
        scanf("%d", &a);

        if (0 == a)
            break;

        printf("%d\n", is_prime(a));
    }

    return 0;
}