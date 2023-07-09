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

#define N 6



#include <stdio.h>
#include <stdlib.h>
#include <search.h>
static char *data[] = { "alpha", "bravo", "charlie", "delta",
     "echo", "foxtrot", "golf", "hotel", "india", "juliet",
     "kilo", "lima", "mike", "november", "oscar", "papa",
     "quebec", "romeo", "sierra", "tango", "uniform",
     "victor", "whisky", "x-ray", "yankee", "zulu"
};
int
main(void)
{
    ENTRY e, *ep;
    int i;
    hcreate(30);
    for (i = 0; i < 24; i++) {
        e.key = data[i];
        /* data — это просто целое число, а не
           указатель на что-то */
        e.data = (void *) i;
        ep = hsearch(e, ENTER);
        /* здесь ошибки быть не должно */
        if (ep == NULL) {
            fprintf(stderr, "ошибка элемента\n");
            exit(EXIT_FAILURE);
        }
    }
    for (i = 22; i < 26; i++) {
        /* показать два элемента массива и
           два не из массива */
        e.key = data[i];
        ep = hsearch(e, FIND);
        printf("%9.9s -> %9.9s:%d\n", e.key,
               ep ? ep->key : "NULL", ep ? (int)(ep->data) : 0);
    }
    hdestroy();
    exit(EXIT_SUCCESS);
}