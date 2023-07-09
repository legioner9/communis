#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>

int main(int argc, char const *argv[])
{
    int a, b, c, d;
    a = (b = -3) + (c = 4);
    printf("%d %d %d %du\n", a, b, c, d);
    printf("%d > %d = %d \n", b, c, b > c);
    printf("%d < %d = %d \n", b, c, b < c);

    printf("\n");
    printf("%d", 5u > -2); // 0 !!!
    printf("\n");

    return 0;
}