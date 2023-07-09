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

#define N 6

#include <dirent.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <unistd.h>

int main(int argc, char const *argv[], char *envp[]) {
    int c;
    while ((c = getchar()) != EOF) {

        if (c == 92) {

            putchar(92);
            putchar(92);

            // if (c == '\\') {

            //     printf("\\\\");

        } else if (c == '\t') {

            putchar(92);
            putchar('t');
        }

        else if (c == '\b') {

            putchar(92);
            putchar('b');
        }

        else
            putchar(c);
    }
    return 0;
}
