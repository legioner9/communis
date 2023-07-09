#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>
#include <iso646.h>
#include <stdlib.h>
#include <time.h>
#include <limits.h>
#include <float.h>
#include <string.h>
#include <math.h>

//lc_

#define N 6
/* itoa: преобразование n в строку s */
void itoa(int n, char s[])
{
    int i, sign;
    if ((sign = n) < 0) /* сохраняем знак */
        n =-n;                 /* делаем n положительным */
    i = 0;
    do { /* генерируем цифры в обратном порядке */
    s[i++] = n %10 + '0'; /* следующая цифра */
    } while ((n /= 10) > 0); /* исключить ее */
    if (sign < 0)
        s[i++] = '-';
    s[i] = '\0';
    reverse(s);
}

int main(int argc, char const *argv[])
{
    /* code */
    return 0;
}