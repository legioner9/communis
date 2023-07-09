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

void PrintInts(int first, ...)
{
    char *buffer;
    const char *format = "[%d] ";
    int count = 0;
    int val = first;
    va_list vl, vl_count;
    va_start(vl, first);

    /* count number of arguments: */
    va_copy(vl_count, vl);
    while (val != 0)
    {
        val = va_arg(vl_count, int);
        ++count;
    }
    va_end(vl_count);

    /* allocate storage for format string: */
    buffer = (char *)malloc(strlen(format) * count + 1);
    buffer[0] = '\0';

    /* generate format string: */
    for (; count > 0; --count)
    {
        strcat(buffer, format);
    }

    /* print integers: */
    printf(format, first);
    vprintf(buffer, vl);

    va_end(vl);
}

int main(int argc, char const *argv[])
{
    PrintInts(10, 20, 30, 40, 50, 0);
    return 0;
}

// Вывод:
// [10] [20] [30] [40] [50] [0]
