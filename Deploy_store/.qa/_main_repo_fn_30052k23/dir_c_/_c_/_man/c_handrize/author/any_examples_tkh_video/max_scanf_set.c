#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>
#include <iso646.h>

int main(int argc, char const *argv[])
{
    int a = 1;
    while (a)
    {
        printf("Enter A: (int) (int) ...if \"77\" be calced, if \"0\" as last be stoploop\n");
        int max = 1 << 31; // that INT_MIN, (1 << 31) - 1 == INT_MAX
        int index = 0, index_max, quantity_maxs;

        while (1)
        {
            scanf("%d", &a);
            if (0 == a)
                return 0;
            if (77 == a)
                break;
            // max = max > a ? max : a;
            if (a > max and (a % 2 == 0)) // add FILTER: max in even integers
            {
                max = a;
                index_max = index;
                quantity_maxs = 1;
                printf("a = %d, max = %d, index_max = %d, quantity_maxs = %d\n", a, max, index_max, quantity_maxs);
            }
            if (a == max)
                ++quantity_maxs;
            ++index;
        }
        if (max != (1 << 31))
            printf("Max of A = %d with position out zero : %d quantity : %d\n", max, index_max, quantity_maxs);
        else if (max == (1 << 31))
            printf("Solution is empty\n");
    }

    return 0;
}