// Оператор выбора switch

#include <stdio.h>

int main(int argc, char const *argv[])
{
    int age;
    printf("Enter you age (int):\n");
    scanf("%d", &age);
    int flag;
    if (age >= 30)
    {
        flag = 1;
    }
    else if (age < 30 && age > 0)
    {
        flag = 0;
    }
    else if (age <= 0)
    {
        flag = 2;
    }

    switch (flag)
    {
    case 0:
        printf("Yang)))");
        break;
    case 2:
        printf("Not borne?");
        break;
    case 1:
        printf("Old(((");
        break;

    default:
        printf("WTF!");
        break;
    }

    return 0;
}
