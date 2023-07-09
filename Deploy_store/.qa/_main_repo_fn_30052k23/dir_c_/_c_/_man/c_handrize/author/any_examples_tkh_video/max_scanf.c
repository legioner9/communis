#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>
#include <iso646.h>

int main(int argc, char const *argv[])
{
    int a = 1;
    while (a)
    {
        printf("Enter A: (int) (int) ...if \"77\"calc, if \"0\" as last be stoploop\n");
        int max = 0;
        while (1)
        {
            scanf("%d", &a);
            if (0 == a)
                return 0;
            if (77 == a)
                break;
            max = max > a ? max : a;
        }

        printf("Max of A = %d\n", max);
    }

    return 0;
}