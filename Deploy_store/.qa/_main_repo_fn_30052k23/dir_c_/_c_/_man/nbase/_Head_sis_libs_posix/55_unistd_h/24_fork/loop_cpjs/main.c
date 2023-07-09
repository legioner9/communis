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

#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>

int main(void)
{
    for (int i = 1; i <= 5; i++)
    {
        pid_t pid = fork();

        if (pid == 0)
        {
            printf("Дочерний процесс => PPID=%d, PID=%d\n", getppid(), getpid());
            exit(0);
        }
        else
        {
            printf("Родительский процесс =>PID=%d\n", getpid());
            printf("Ожидание завершения дочерних процессов ...\n");
            wait(NULL);
            printf("завершение дочернего процесса.\n");
        }
    }

    return EXIT_SUCCESS;
}
