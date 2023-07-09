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
#include <errno.h>
#include <unistd.h>
#include <stdarg.h>

// LIB FROM ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_lib
#include "lib/lc_0.h"
#include "lib/lc_1.h"
#include "lib/io_1.h"
#include "lib/lib_1.h"

#define N 6

void PrintFloats(int n, ...)
{
    int i;
    double val;
    printf("Printing floats:");
    va_list vl;
    va_start(vl, n);
    for (i = 0; i < n; i++)
    {
        val = va_arg(vl, double);
        printf(" [%.2f]", val);
    }
    va_end(vl);
    printf("\n");
}

int main(int argc, char const *argv[])
{
    PrintFloats(3, 3.14159, 2.71828, 1.41421);
    return 0;
}

// Функция PrintFloatsпринимает количество дополнительных аргументов в качестве
// первого аргумента (n), которые затем последовательно считываются с помощью cstdarg
// макроса и распечатываются в определенном формате.

// Вывод:
// Printing floats: [3.14] [2.72] [1.41]
