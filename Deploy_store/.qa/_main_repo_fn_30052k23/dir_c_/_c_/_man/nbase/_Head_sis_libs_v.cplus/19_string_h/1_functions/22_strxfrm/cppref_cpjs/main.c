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

    const char *in1 = "hrnec";
    char out1[1 + strxfrm(NULL, in1, 0)];
    strxfrm(out1, in1, sizeof out1);

    const char *in2 = "chrt";
    char out2[1 + strxfrm(NULL, in2, 0)];
    strxfrm(out2, in2, sizeof out2);

    printf("In the Czech locale: ");
    if (strcmp(out1, out2) < 0)
        printf("%s before %s\n", in1, in2);
    else
        printf("%s before %s\n", in2, in1);

    printf("В лексикографическом сравнении: ");
    if (strcmp(in1, in2) < 0)
        printf("%s перед %s\n", in1, in2);
    else
        printf("%s перед %s\n", in2, in1);
    return 0;
}
