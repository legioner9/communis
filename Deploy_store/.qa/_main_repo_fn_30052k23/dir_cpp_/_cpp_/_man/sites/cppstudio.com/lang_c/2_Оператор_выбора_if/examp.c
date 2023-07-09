// Оператор выбора if

#include <stdio.h>

int main()
{
    int age;
    printf("Enter age\n");
    scanf("%d", &age);

    if (7 > age)
    {
        printf("true: 7 > age\n");
        printf("%d", 7 > age);
        printf("\n");
    }
    else
    {
        printf("false: 7 < age\n");
        printf("%d", 7 > age);
        printf("\n");
    }
}