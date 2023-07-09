// Массивы 1

#include <stdio.h>
#include <stdlib.h>

int main(int argc, char const *argv[])
{
    char string[10];
    printf("Enter string : \n");
    scanf("%s", string);
    printf("You enter: %s\n", string);
    for (int i = 0; i < 10; ++i)
    {
        if (string[i] == 'a')
        {
            printf("In place %d (string %s) is a ", i, string);
        }
    }
    return 0;
}
