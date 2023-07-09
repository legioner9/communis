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
#include "lib/uni_1.h"

#define N 6

#include <sys/stat.h>
#include <sys/types.h>

#include <unistd.h>
#include <fcntl.h>

int main(int argc, char const *argv[])
{
    gid_t *group;
    int nogroups;
    long ngroup_max;

    ngroup_max = sysconf(_SC_NGROUPS_MAX) + 1;
    group = (gid_t *)malloc_c(ngroup_max * sizeof(gid_t), __FILE__, __LINE__);
    nogroups = getgroups_с(ngroup_max, group, __FILE__, __LINE__);

    printf("ngroup_max = %ld\n", ngroup_max);
    // printf("nogroups = %d\n", nogroups);


    for (int i = 0; i < nogroups; i++)
    {
        // if (group[i] > 0)
            printf("%d\n", group[i]);
    }

    return 0;
}
