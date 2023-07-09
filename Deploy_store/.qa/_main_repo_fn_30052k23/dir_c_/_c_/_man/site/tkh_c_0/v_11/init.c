#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>
#include <iso646.h>

int main(int argc, char const *argv[])
{

    printf("Enter a(int)\n");

    for (; 1;)
    {
        int a;
        scanf("%d", &a);
        if (-1 == a)
            continue;
        if (0 == a)
            break;
        printf("16 bit \"a\" = %X\n", a);
        printf("Enter a(int)\n");
    }

    return 0;
}