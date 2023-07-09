// Массивы 2

#include <stdio.h>
#include <stdlib.h>

int main(int argc, char const *argv[])
{
    int darr[3][3];
    for (int i = 0; i < 3; i++)
    {
        for (size_t j = 0; j < 3; j++)
        {
            darr[i][j] = i * j;
        }
    }

    printf("Result array: \n");

        for (int i = 0; i < 3; i++)
    {
        for (size_t j = 0; j < 3; j++)
        {
            printf(" [%d][%d]=%d", i, j, darr[i][j]);
        }
        printf("\n");
    }

    return 0;
}
