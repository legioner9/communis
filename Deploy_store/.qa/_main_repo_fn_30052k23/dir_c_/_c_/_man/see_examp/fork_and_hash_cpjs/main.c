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

int getPIN()
{
    // используйте PPID и PID в качестве начального
    srand(getpid() + getppid());
    int secret = 1000 + rand() % 9000;
    return secret;
}

int main(void)
{
    int fd[2];
    pipe(fd);
    pid_t pid = fork();

    if (pid > 0)
    {
        close(0);
        close(fd[1]);
        dup(fd[0]);

        int secretNumber;
        size_t readBytes = read(fd[0], &secretNumber, sizeof(secretNumber));

        printf("Ожидание PIN-кода ...\n");
        wait(NULL);
        printf("Чтение байтов: %ld\n", readBytes);
        printf("PIN: %d\n", secretNumber);
    }
    else if (pid == 0)
    {
        close(1);
        close(fd[0]);
        dup(fd[1]);

        int secret = getPIN();
        write(fd[1], &secret, sizeof(secret));
        exit(EXIT_SUCCESS);
    }

    return EXIT_SUCCESS;
}
