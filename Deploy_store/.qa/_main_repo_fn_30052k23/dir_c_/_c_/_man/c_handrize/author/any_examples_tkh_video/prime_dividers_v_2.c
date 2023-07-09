#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>
#include <iso646.h>

void print_prime_divisors(int a)
{
    int _a = a;
    int divisor = 2;

    while (1 != _a)
    {
        if (0 == _a % divisor)
        {
            printf("%d \n", divisor);
            _a /= divisor;
        }
        else
            divisor += 1;
    }
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

        print_prime_divisors(a);
    }

    return 0;
}