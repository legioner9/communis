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

int main(int argc, char const *argv[])
{
    char buffer1[] = "DWgaOtP12df0";
    char buffer2[] = "DWGAOTP12DF0";

    int n;

    n = memcmp(buffer1, buffer2, sizeof(buffer1));

    if (n > 0)
        printf("'%s' is greater than '%s'.\n", buffer1, buffer2);
    else if (n < 0)
        printf("'%s' is less than '%s'.\n", buffer1, buffer2);
    else
        printf("'%s' is the same as '%s'.\n", buffer1, buffer2);

    return 0;
}

// Вывод:

// 'DWgaOtP12df0' is greater than 'DWGAOTP12DF0'.

// DWgAOtp12Df0 больше, чем DWGAOTP12DF0, потому что первый
// несоответствующий символ в обоих словах-'g' и 'G' соответственно,
// и 'g' (103) оценивается как больше, чем 'G' (71).
