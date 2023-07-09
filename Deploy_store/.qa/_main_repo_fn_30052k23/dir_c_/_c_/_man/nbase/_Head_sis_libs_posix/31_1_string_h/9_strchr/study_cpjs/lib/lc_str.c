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

// lc_

#include <sys/stat.h>
#include <sys/types.h>

#include <dirent.h>
#include <fcntl.h>
#include <unistd.h>

#include "st_mode_1.h"

/*#*/ int cp_str_lc_str(char *to, char *from)
{
    int i = 0;
    while ((to[i] = from[i]) != '\0')
        ++i;
    return i;
}

/*#*/ int unseal_cntchar_lc_str(char *s)
{
    int i;
    int c;
    for (i = 0; i < strlen(s) + 1; ++i)
    {
        c = (int)s[i];
        if (c == '\0')
        {
            printf("\\0");
        }
        else if (c == '\n')
        {
            printf("\\n");
            putchar(c);
        }
        else if (c == '\f')
        {
            printf("\\f");
            putchar(c);
        }
        else if (c == '\t')
        {
            printf("\\t");
            putchar(c);
        }
        else if (c == '\v')
        {
            printf("\\v");
            putchar(c);
        }
        else if (c == '\a')
        {
            printf("\\a");
            putchar(c);
        }
        else if (c == '\b')
        {
            printf("\\b");
            putchar(c);
        }
        else
            putchar(c);
    }

    return 0;
}
/*#*/
/*#*/
/*#*/
/*#*/