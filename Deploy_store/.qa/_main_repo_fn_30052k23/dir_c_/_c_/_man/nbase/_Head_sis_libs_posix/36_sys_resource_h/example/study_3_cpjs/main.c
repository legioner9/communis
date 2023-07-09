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
#include <threads.h>
#include <unistd.h>
#include <wchar.h>
#include <wordexp.h>

// #define _XOPEN_SOURCE 500
#define N 7
#define _GNU_SOURCE

//  https://www.delftstack.com/howto/c/getrusage-example-in-c/

// while (*envp != NULL)
//     printf("  %s\n", *(envp++));

// #define errExit(msg)                                                                                                   \
//     do                                                                                                                 \
//     {                                                                                                                  \
//         perror(msg);                                                                                                   \
//         exit(EXIT_FAILURE);                                                                                            \
//     } while (0)

// В следующем примере кода мы создаем 16 потоков, все из которых
// выполняют одну и ту же loopFunc2функцию и завершаются. Независимо от этого,
// время, полученное getrusageвызовом, равно затраченному времени, суммированному
// во всех потоках, включая те, которые их создали. Между тем, если пользователь
// хочет измерить системное время, потребляемое только вызывающим потоком,
// RUSAGE_THREADможет быть передано в качестве первого аргумента. Однако обратите внимание,
// RUSAGE_THREADчто значение зависит от Linux и _GNU_SOURCEдолжно быть определено
// перед включением заголовочных файлов.

enum
{
    NUM_ITERS = 1000000,
    NUM_THREADS = 16
};

void *loopFunc2(size_t num)
{
    for (int i = 0; i < num; ++i)
    {
        getpid();
    }
    return NULL;
}

float diffUserTime(struct rusage *start, struct rusage *end)
{
    return (end->ru_utime.tv_sec - start->ru_utime.tv_sec) + 1e-6 * (end->ru_utime.tv_usec - start->ru_utime.tv_usec);
}

float diffSystemTime(struct rusage *start, struct rusage *end)
{
    return (end->ru_stime.tv_sec - start->ru_stime.tv_sec) + 1e-6 * (end->ru_stime.tv_usec - start->ru_stime.tv_usec);
}

int main(int argc,     // Number of strings in array argv
         char *argv[], // Array of command-line argument strings
         char **envp)  // Array of environment variable strings
{
    struct rusage start, end;
    thrd_t threads[NUM_THREADS];
    int rc;

    getrusage(RUSAGE_SELF, &start);
    for (int i = 0; i < NUM_THREADS; i++)
    {
        rc = thrd_create(&threads[i], (thrd_start_t)loopFunc2, (void *)NUM_ITERS);
        if (rc == thrd_error)
        {
            perror("[ERROR] thrd_create() call failed\n");
        }
    }
    loopFunc2(NUM_ITERS);

    getrusage(RUSAGE_SELF, &end);
    printf("loopFunc2 stats:\n");
    printf("  CPU time: %.06f sec user, %.06f sec system\n", diffUserTime(&start, &end), diffSystemTime(&start, &end));
    return 0;
}
