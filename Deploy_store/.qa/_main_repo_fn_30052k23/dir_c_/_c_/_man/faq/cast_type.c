#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>

int main(int argc, char const *argv[])
{
    int a = -100;
    unsigned int b = 10U;
    long long int c = a + b;

    printf("%d + %d = %lld\n", a, b, c); // -100 + 10 = 4294967206

    char s = 'Ъ'; // soft error: многознаковая символьная константа
    // overflow in conversion from «int» to «char» changes value from «53418» to «-86»
    printf("s = %d \n", (int)s); //-86
    printf("s = %c \n", s);      // �

    char e = 'e';
    printf("s = %d \n", (int)e); // 101
    printf("s = %c \n", e);      // e

    return 0;
}