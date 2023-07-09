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

/*#*/ int isDiv_01_lc_num(int devidend, int divider) /* devidend % divider == 0 */
{
    if (devidend % divider == 0)
    {
        return 1;
    }
    return 0;
}

/*#*/ void swap_lc_num(float *a, float *b) /* (a,b) => a = b b = a */
{
    float c;
    c = *a;
    *a = *b;
    *b = c;
}