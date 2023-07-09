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

#define IN 1  // in word
#define OUT 0 // out word

#include <dirent.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <unistd.h>

int main(int argc, char const *argv[], char *envp[]) {
    int c, nc, nw, nl, state;
    state = OUT;
    nc = nw = nl = 0;

    while ((c = getchar()) != EOF) {
        ++nc;
        if (c == '\0'){
            putchar(92);
            putchar(0);
        }
        if (c == '\n') {
            ++nl;
            state = OUT;
        }
        if (c == ' ' || c == '\n' || c == '\t') {
            state = OUT;

        } else if (state == OUT) {
            state = IN;
            ++nw;
        }
    }
    printf("c: %d, w: %d, l: %d", nc, nw, nl);
    return 0;
}