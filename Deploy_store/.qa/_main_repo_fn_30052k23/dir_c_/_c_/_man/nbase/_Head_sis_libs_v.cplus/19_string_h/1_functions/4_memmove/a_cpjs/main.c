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
    char str[] = "0...a....b....c....d....e....f";
    puts_c(str, __FILE__, __LINE__);
    puts_c("memmove(str + 1, str + 2, 30)", __FILE__, __LINE__);
    memmove(str + 1, str + 2, 30);
    puts_c(str, __FILE__, __LINE__);
    puts_c("memmove(str + 9, str + 8, 30)", __FILE__, __LINE__);
    memmove(str + 9, str + 8, 30);
    puts_c(str, __FILE__, __LINE__);
        puts_c("memmove(str + 9, str + 8, 30)", __FILE__, __LINE__);
    memmove(str + 9, str + 8, 30);
    puts_c(str, __FILE__, __LINE__);
    return 0;
}
