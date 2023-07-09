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
    setlocale(LC_COLLATE, "cs_CZ.iso88592");

    const char *s1 = "hrnec";
    const char *s2 = "chrt";

    printf("In the Czech locale: ");
    if (strcoll(s1,s2) < 0)
        printf("%s before %s\n", s1, s2);
    else
        printf("%s before %s\n", s2, s1);

    printf("In lexicographical comparison: ");
    if (strcmp(s1, s2) < 0)
        printf("%s before %s\n", s1, s2);
    else
        printf("%s before %s\n", s2, s1);
    return 0;
}

// In the Czech locale: hrnec before chrt
// In lexicographical comparison: chrt before hrnec