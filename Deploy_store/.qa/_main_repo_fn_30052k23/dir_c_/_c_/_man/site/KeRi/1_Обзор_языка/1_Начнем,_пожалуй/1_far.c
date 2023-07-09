#include <assert.h>
#include <ctype.h>
#include <errno.h>
#include <fenv.h>
#include <float.h>
#include <inttypes.h>
#include <iso646.h>
#include <limits.h>
#include <locale.h>
#include <math.h>
#include <setjmp.h>
#include <signal.h>
#include <stdarg.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <tgmath.h>
#include <time.h>
#include <uchar.h>
#include <wchar.h>
#include <wctype.h>

// lc_

#define N 6

#include <dirent.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <unistd.h>

// Приведенная ниже программа выполняет вычисления по формуле °С = (5/9)(°F-32)
// и печатает таблицу соответствия температур по Фаренгейту температурам по
// Цельсию:

int main(int argc, char const *argv[]) {

    float fahr, celsius;
    int lower, upper, step;

    lower = 0; /* нижняя граница таблицы температур */
    upper = 300; /* верхняя граница */
    step = 20;   /* шаг */

    fahr = lower;
    while (fahr <= upper) {
        celsius = (5.0 / 9.0) * (fahr - 32.0);
        printf("% 3.0f % 6.1f\n", fahr, celsius);
        fahr = fahr + step;
    }
    return 0;
}