#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>

int main(int argc, char const *argv[])
{
    double x;

    x = 1 / 2;
    printf(" %f = 1 / 2 \n", x); // 0.000000 = 1 / 2

    x = 1. / 2;
    printf(" %f = 1. / 2 \n", x); //  0.500000 = 1. / 2

    int a = 1, b = 2;

    x = a / b;
    printf(" a = %d, b = %d , a/b = %f\n", a, b, x);

    x = (double)a / b;
    printf(" a = %d, b = %d , (double)a / b = %f\n", a, b, x);

    return 0;
}