#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>

int main(int argc, char const *argv[])
{
    if (1)
    {
        printf("True");
    }

    printf("Enter a(int)\n");
    int a;
    scanf("%d", &a);
    int delim = a % 2;
    if (0 == delim)
    {
        printf("Variable %d is even", a);
    }
    else if (0 != delim)
    {
        printf("Variable %d is't even", a);
    }

    printf("\n");

    return 0;
}