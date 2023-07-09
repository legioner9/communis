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

    int i;
    char strtext[] = "129th";
    char cset[] = "1234567890";

    i = strspn(strtext, cset);
    printf("The initial number has %d digits.\n", i);
    return 0;
}

// The initial number has 3 digits.
