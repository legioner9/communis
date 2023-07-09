#include <stdio.h>
// #include <stdbool.h>
#include <inttypes.h>
// #include <iso646.h>

int is_prime(int a)
{
    for (int divisor = 2;
         divisor * divisor <= a;
         ++divisor)
    {
        if (0 == a % divisor)
        {
            printf("divisor = %d\n", divisor);
            return 0; // false -> not prime
        }
    }
    return 1; // thue -> is prime
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

        // int res = is_prime(a);

        char *s = (1 == is_prime(a)) ? "prime" : "composite";

        printf("%d is %s\n", a, s);
    }

    return 0;
}