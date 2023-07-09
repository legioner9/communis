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

#define N 6

#include <aio.h>
#include <arpa/inet.h>
#include <net/if.h>
#include <netdb.h>
#include <netinet/in.h>
#include <signal.h>
#include <sys/socket.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <sys/un.h>

#include <dirent.h>
#include <fcntl.h>
#include <fmtmsg.h>
#include <ftw.h>
#include <gdbm.h>
#include <glob.h>
#include <grp.h>
#include <iconv.h>
#include <inttypes.h>
#include <poll.h>
#include <pwd.h>
#include <regex.h>
#include <sched.h>
#include <unistd.h>
#include <wchar.h>
#include <wordexp.h>

#define _XOPEN_SOURCE 500
// #define _GNU_SOURCE

// https://yumichan.net/programming/obtain-a-list-of-process-scheduling-policy-and-priority/

int main(int argc,     // Number of strings in array argv
         char *argv[], // Array of command-line argument strings
         char **envp)  // Array of environment variable strings
{
    int ret;
    int numOfProcess = 31;
    const pid_t pid[] = {
        1,   2,   3,   4,   5,   6,   7,   8,   138, 140, 141, 143, 156, 169, 170, 252,
        255, 309, 317, 325, 399, 404, 409, 412, 415, 418, 460, 469, 487, 500, 505}; // an array of pids, change to the
                                                                                    // list you want
    int i = 0;
    struct sched_param stSched = {0};

    for (; i < numOfProcess; ++i)
    {
        ret = sched_getscheduler(pid[i]); // get the policy
        if (ret < 0)
        {
            printf("Error: sched_getscheduler\n");
            goto ERR_STATE;
        }

        printf("pid %d Policy: %d ", pid[i], ret);

        switch (ret)
        {
        case SCHED_OTHER: // the default policy, use SCHED_NORMAL instead of SCHED_OTHER sometimes
            printf("SCHED_OTHER\t");
            break;
        case SCHED_FIFO:
            printf("SCHED_FIFO\t");
            break;
        case SCHED_RR:
            printf("SCHED_RR\t");
            break;
        /*case SCHED_BATCH: // uncomment this case if your Linux support it
            printf("SCHED_BATCH\n");
            break;
        case SCHED_IDLE: // uncomment this case if your Linux support it
            printf("SCHED_IDLE\n");
            break;*/
        default:
            printf("No matching schedule policy!\n");
            break;
        };

        ret = sched_getparam(pid[i], &stSched); // get the priority
        if (ret != 0)
        {
            printf("Error: sched_getparam\n");
            goto ERR_STATE;
        }
        printf("Priority: %d\n", stSched.sched_priority);

        memset(&stSched, 0, sizeof(struct sched_param));
    }

ERR_STATE:
    return 0;
}
