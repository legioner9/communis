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

/*#*/ int wal_lc_pipe(void) /* --- */
{ // read stdin pipe word at new line

    int IN = 1;  // in the word
    int OUT = 0; // out the word

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
        } else {
            state = IN;
            putchar(c);
        }
    }
    return 0;
}

/*#*/ int plrt_s_lc_pipe(void)
{ // placerat symbols file
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
/*#*/
/*#*/
/*#*/