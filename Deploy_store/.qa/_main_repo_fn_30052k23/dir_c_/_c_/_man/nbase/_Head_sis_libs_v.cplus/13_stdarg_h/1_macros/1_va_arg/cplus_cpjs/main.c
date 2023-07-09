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

// LIB FROM ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_lib
#include "lib/lc_0.h"
#include "lib/lc_1.h"
#include "lib/io_1.h"
#include "lib/lib_1.h"

#define N 6

int FindMax(int n, ...)
{
    int i, val, largest;
    va_list vl;
    va_start(vl, n);
    largest = va_arg(vl, int);
    for (i = 1; i < n; i++)
    {
        val = va_arg(vl, int);
        largest = (largest > val) ? largest : val;
    }
    va_end(vl);
    return largest;
}

int main(int argc, char const *argv[])
{
    int m;
    m = FindMax(7, 702, 422, 631, 834, 892, 104, 772);
    printf("The largest value is: %d\n", m); 
    return 0;
}

// Эта FindMaxфункция принимает в качестве своего первого параметра количество 
// дополнительных аргументов, которые она получит. Первый дополнительный аргумент 
// извлекается и используется в качестве начальной ссылки для сравнения, а затем 
// остальные дополнительные аргументы извлекаются в цикле и сравниваются, чтобы 
// вернуть наибольший (что в данном случае так и есть 892).
