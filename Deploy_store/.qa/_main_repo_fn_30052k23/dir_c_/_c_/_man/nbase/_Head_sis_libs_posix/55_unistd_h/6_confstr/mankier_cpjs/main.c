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
#include "lib/uni_1.h"

#define N 6

#include <unistd.h>

char *get_conf_str(int name)
{
    size_t len = confstr(name, NULL, 0);
    char *buffer = (char *)malloc(len);

    if (confstr(name, buffer, len + 1) == 0)
    {
        free(buffer);
        return NULL;
    }

    return buffer;
}

int main(int argc, char const *argv[])
{
    // _CS_PATH
    printf("inv = %d: %s\n", _CS_PATH, get_conf_str(_CS_PATH));
    printf("inv = %d: %s\n", _CS_V7_ENV, get_conf_str(_CS_V7_ENV));
    printf("inv = %d: %s\n", _CS_V6_ENV, get_conf_str(_CS_V6_ENV));
    // printf("inv = %d: %s\n", 6, get_conf_str(6));
    // printf("%s\n", get_conf_str(_CS_V7_ENV));
    // printf("%s\n", get_conf_str(_CS_V6_ENV));
    // for (int i = 0; i < 6; i++)
    // {
    //     printf("inv = %d: %s\n", i, get_conf_str(i));
    // }
    // char *str0 = "";
    for (int i = 0; i < 4096; i++)

    {
        if (confstr(i, NULL, 0) != 0)
            printf("inv = %d: %s\n", i, get_conf_str(i));
    }
    return 0;
}
