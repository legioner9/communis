#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>

// analog: /tkh_c_0/v_9/if_c.c

int main(int argc, char const *argv[])
{
    printf("Enter a(int)\n");
    int a;
A:
    scanf("%d", &a);

    if (0 == a)
        goto D;

    int delim = a % 2;

    if (0 != delim)
        goto C;

    printf("Variable %d is even\n", a);

    goto A;
C:
    printf("Variable %d is odd\n", a);

    goto A;
D:
    return 0;
}
