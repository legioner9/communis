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

#define MAXLINE 1000

#include <dirent.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <unistd.h>

int i_str(char *s, int lim) {
    int c, i;
    for (i = 0; i < lim - 1 && (c = getchar()) != EOF && c != '\n'; ++i)
        *(s + i) = c;
    if (c == '\n') {
        *(s + i) = c;
        ++i;
    }
    *(s + i) = c;
    return i;
}

int cp_str(char *to, char *from) {
    int i = 0;
    while ((to[i] = from[i]) != '\0')
        ++i;
    return i;
}

int main(int argc, char const *argv[], char *envp[]) {
    int len; // current legth
    int max; // max length
    char line[MAXLINE];
    char longest[MAXLINE];

    max = 0;
    while ((len = i_str(line, MAXLINE)) > 0) {
        // printf("line : %s\n",longest);
        // printf("len : %d\n", len);
        // printf("max : %d\n", max);
        if (len > max) {
            max = len;
            cp_str(longest, line);
            printf("longest : %s\n",longest);
        }
    }
    if (max > 0)
        printf("result : %s\n", longest);
    return 0;
}