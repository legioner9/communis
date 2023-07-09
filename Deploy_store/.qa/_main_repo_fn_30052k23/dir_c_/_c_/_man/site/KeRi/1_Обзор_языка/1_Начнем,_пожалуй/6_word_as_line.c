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

#define IN 1
#define OUT 0

#include <dirent.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <unistd.h>

int main(int argc, char const *argv[]) {
    /* code */
    int c, state;
    state = OUT;
    while ((c = getchar()) != EOF) {

        if ((state == IN) &&
            (c == ' ' || c == '\t' || c == '\n' || c == '\b')) {
            putchar('\n');
            state = OUT;
        } else if ((c == ' ' || c == '\t' || c == '\n' || c == '\b')) {
            state = OUT;
            continue;
        }
        else {
            state = IN;
            putchar(c);
        }
    }
    return 0;
}