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

/* ch09-reparent.c --- показывает, что getppid() может менять значения */

int main(int argc, char **argv)
{
    pid_t pid, old_ppid, new_ppid;
    pid_t child, parent;

    parent = getpid(); /* перед fork() */

    if ((child = fork()) < 0)
    {
        fprintf(stderr, "%s: fork of child failed: %sn",
                argv[0], strerror(errno));
        exit(1);
    }
    else if (child == 0)
    {
        old_ppid = getppid();
        sleep(2); /* см. главу 1*/
        new_ppid = getppid();
    }
    else
    {
        sleep(1);
        exit(0); /* родитель завершается после fork() */
    }

    /* это выполняет только порожденный процесс */
    printf("Original parent: %d\n", parent);
    printf("Child: %d\n", getpid());
    printf("Child's old ppid: %d\n", old_ppid);
    printf("Child's new ppid: %d\n", new_ppid);

    exit(0);
}