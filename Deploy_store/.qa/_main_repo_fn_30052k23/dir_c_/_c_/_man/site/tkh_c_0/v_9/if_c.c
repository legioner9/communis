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
    while (0 != a)
    {
        // scanf("%d", &a);
        int delim = a % 2;
        if (0 == delim)
        {
            printf("Variable %d is even\n", a);
        }
        else if (0 != delim)
        {
            printf("Variable %d is odd\n", a);
        }
        else
        {
            printf("Error program\n");
        }
        scanf("%d", &a);
    }

    printf("\n");

    return 0;
}