// Си-строки

#include <stdio.h>
#include <stdlib.h>

int main(int argc, char const *argv[])
{
    char *str;
    str = malloc(sizeof(*str) * 64);
    free(str);

    char mStr[100];
    printf("Enter long string : ");
    fgets(mStr, 100, stdin);
    printf("You long string: \n%s", mStr);
    return 0;
}
