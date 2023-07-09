// Оператор выбора switch

#include <stdio.h>

// int main(int argc, char const *argv[])
int main()
{
    int flag;
    printf("Enter you flag 0 or 1 (int):\n");
    scanf("%d", &flag);
    // int flag;
    // if (age >= 30)
    // {
    //     flag = 1;
    // }
    // else if (age < 30 )
    // {
    //     flag = 0;
    // }


    switch (flag)
    {
    case 0:
        printf("Yang)))");
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
