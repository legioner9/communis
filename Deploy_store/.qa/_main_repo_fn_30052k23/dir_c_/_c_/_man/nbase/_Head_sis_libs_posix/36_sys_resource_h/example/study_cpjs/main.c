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
#include "lib/dirent_1.h"
#include "lib/fcntl_1.h"
#include "lib/io_1.h"
#include "lib/l3p_1.h"
#include "lib/lc_0.h"
#include "lib/lc_1.h"
#include "lib/lc_in.h"
#include "lib/lc_io.h"
#include "lib/lc_pipe.h"
#include "lib/lc_str.h"
#include "lib/lib_1.h"
#include "lib/libgen_1.h"
#include "lib/socket_1.h"
#include "lib/st_mode_1.h"
#include "lib/sys_stat_1.h"
#include "lib/uni_1.h"

#include <aio.h>
#include <arpa/inet.h>
#include <net/if.h>
#include <netdb.h>
#include <netinet/in.h>
#include <signal.h>
#include <sys/ipc.h>
#include <sys/mman.h>
#include <sys/msg.h>
#include <sys/resource.h>
#include <sys/sem.h>
#include <sys/socket.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <sys/un.h>
#include <sys/wait.h>

#include <dirent.h>
#include <fcntl.h>
#include <fmtmsg.h>
#include <ftw.h>
#include <gdbm.h>
#include <glob.h>
#include <grp.h>
#include <iconv.h>
#include <inttypes.h>
#include <mqueue.h>
#include <poll.h>
#include <pthread.h>
#include <pwd.h>
#include <regex.h>
#include <sched.h>
#include <search.h>
#include <semaphore.h>
#include <signal.h>
#include <spawn.h>
#include <stdarg.h>
#include <stddef.h>
#include <unistd.h>
#include <wchar.h>
#include <wordexp.h>

#define _XOPEN_SOURCE 500
#define N 7

// #define _GNU_SOURCE

// while (*envp != NULL)
//     printf("  %s\n", *(envp++));

#define errExit(msg)                                                                                                   \
    do                                                                                                                 \
    {                                                                                                                  \
        perror(msg);                                                                                                   \
        exit(EXIT_FAILURE);                                                                                            \
    } while (0)

int main(int argc, char *argv[])
{
    struct rlimit old, new;
    struct rlimit *newp;
    pid_t pid;
    if (!(argc == 2 || argc == 4))
    {
        fprintf(stderr,
                "Использование: %s <pid> [<новое-мягкое-ограничение> "
                "<новое-жёсткое-ограничение>]\n",
                argv[0]);
        exit(EXIT_FAILURE);
    }
    pid = atoi(argv[1]); /* PID процесса назначения */
    newp = NULL;
    if (argc == 4)
    {
        new.rlim_cur = atoi(argv[2]);
        new.rlim_max = atoi(argv[3]);
        newp = &new;
    }
    /* Установить ограничение на время ЦП процесса назначения;
       получить и показать предыдущее ограничение */
    if (prlimit(pid, RLIMIT_CPU, newp, &old) == -1)
        errExit("prlimit-1");
    printf("Previous limits: soft=%lld; hard=%lld\n", (long long)old.rlim_cur, (long long)old.rlim_max);
    /* Получить и показать новое ограничение времени ЦП */
    if (prlimit(pid, RLIMIT_CPU, NULL, &old) == -1)
        errExit("prlimit-2");
    printf("Новые ограничения: мягкое=%lld; жёсткое=%lld\n", (long long)old.rlim_cur, (long long)old.rlim_max);
    exit(EXIT_FAILURE);
}
