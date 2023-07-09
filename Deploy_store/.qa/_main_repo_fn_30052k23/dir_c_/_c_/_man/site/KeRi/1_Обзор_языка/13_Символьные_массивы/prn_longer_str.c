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

#define MAXLINE 1000

int getline_(char *line, int maxline);
void copy_(char *to, char *from);

int main(int argc, char const *argv[], char *envp[]) {
    int len; // curent length
    int max; // max length
    char line[MAXLINE];
    char longest[MAXLINE];

    max = 0;

    while ((len = getline_(line, MAXLINE)) > 0) {
        if (len > max) {
            max = len;
            copy_(longest, line);
        }
    }

    if (max > 0) { // be one string?
        printf("res: %s", longest);
    }

    return 0;
}

int getline_(char *line, int maxline) {
    int c, i;
    for (i = 0; i < maxline && (c = getchar()) != EOF && c != '\n'; ++i)
        *(line + i) = c;

    if (c == '\n') {
        *(line + i) = c;
        ++i;
    }
    *(line + i) = '\0';
    return i;
}

void copy_(char *to, char *from) {
    int i;

    i = 0;
    while ((to[i] = from[i]) != '\0')
        ++i;
}