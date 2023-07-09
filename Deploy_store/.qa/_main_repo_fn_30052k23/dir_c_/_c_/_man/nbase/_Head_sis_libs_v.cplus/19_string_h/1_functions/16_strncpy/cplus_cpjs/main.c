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
    char str1[] = "To be or not to be";
    char str2[40];
    char str3[40];

    /* copy to sized buffer (overflow safe): */
    //   strncpy ( str2, str1, sizeof(str2) );
    // strcpy(str2,str1);
    strncpy(str2, str1, sizeof(str2));
    printf("sizeof = %d, strlen = %d\n", sizeof(str2), strlen(str2));

    /* partial copy (only 5 chars): */
    strncpy(str3, str2, 5);
    str3[5] = '\0'; /* null character manually added */

    puts(str1);
    puts(str2);
    puts(str3);

    return 0;
}

// sizeof = 40, strlen = 18
// To be or not to be
// To be or not to be
// To be
