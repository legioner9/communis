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
#include "lib/io_1.h"
#include "lib/lc_0.h"
#include "lib/lc_1.h"
#include "lib/lib_1.h"
#include "lib/st_mode_1.h"
#include "lib/uni_1.h"

#define N 6

#include <unistd.h>

int main(int argc, char const *argv[]) {

    FILE *pF =
        fopen_c("a", "r", __FILE__, __LINE__, STMO_PRN, STIF_ONE, STRE_EXI);

    int dpF = fileno(pF);

    int dpF_dup = dup_с(dpF, __FILE__, __LINE__, STMO_PRN, STIF_ONE, STRE_EXI);

    char buf[10];

    read_с(dpF_dup, buf, -1, __FILE__, __LINE__, STMO_PRN, STIF_ONE, STRE_EXI);

    printf("buf = %s\n", buf);

    close_с(dpF, __FILE__, __LINE__, STMO_PRN, STIF_ONE, STRE_EXI);

    return 0;
}
