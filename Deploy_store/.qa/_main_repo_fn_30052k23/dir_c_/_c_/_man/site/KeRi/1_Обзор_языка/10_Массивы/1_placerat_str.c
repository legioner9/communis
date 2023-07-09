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
    int all_chars = 0;
    int rest_chars = 0;
    int b_alfabet = 0;
    int s_alfabet = 0;
    int spaces = 0;

    int digit[10] = {};
    while ((c = getchar()) != EOF) {
        ++all_chars;
        if (c >= '0' && c < '9') {
            ++digit[c - '0'];
        } else if (c >= 'A' && c <= 'Z') {
            ++b_alfabet;
        } else if (c >= 'a' && c <= 'z') {
            ++s_alfabet;
        } else if (c == ' ' || c == '\n' || c == '\t') {
            ++spaces;
        } else {
            putchar(c);
            ++rest_chars;
        }
    }

    printf("all_chars: %d\n", all_chars);
    for (int i = 0; i < 10; i++) {
        printf("dig %d: %d\n", i, *(digit + i));
    }

    printf("b_alfabet: %d\n", b_alfabet);
    printf("s_alfabet: %d\n", s_alfabet);
    printf("spaces: %d\n", spaces);
    printf("rest_chars: %d\n", rest_chars);
    return 0;
}