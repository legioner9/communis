#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>
#include <iso646.h>

int main(int argc, char const *argv[])
{

    printf("Enter x, y\n");
    double x, y;
    scanf("%le%le", &x, &y);

    while (0 != x and 0 != y)
    {

        if (x > 0 and y > 0)
        {
            printf("(%le,%le) in I quarter\n", x, y);
        }
        else if (x < 0 and y > 0)
        {
            printf("(%le,%le) in II quarter\n", x, y);
        }
        else if (x < 0 and y < 0)
        {
            printf("(%le,%le) in III quarter\n", x, y);
        }
        else if (x > 0 and y < 0)
        {
            printf("(%le,%le) in IV quarter\n", x, y);
        }
        else
            printf("Program exception");

        printf("Enter x, y\n");
        scanf("%le%le", &x, &y);
    }

    printf("\n");

    return 0;
}