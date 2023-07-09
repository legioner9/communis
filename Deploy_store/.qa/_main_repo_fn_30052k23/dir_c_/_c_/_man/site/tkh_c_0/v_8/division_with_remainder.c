#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>

int main(int argc, char const *argv[])
{
    int a;
    printf("Rnter a(int) : ");
    scanf("%d", &a);
    printf("a = %d\n", a);

    for (; a != 0;)
    {
        printf("%d %d \n", a / 10, a % 10);
        a /= 10;
    }

    return 0;
}