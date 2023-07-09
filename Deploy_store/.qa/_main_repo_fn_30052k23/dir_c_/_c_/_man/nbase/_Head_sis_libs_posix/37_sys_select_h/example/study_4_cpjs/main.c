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
#include <unistd.h>
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
#include "lib/lc_time.h"
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
#include <sys/select.h>
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

#define _XOPEN_SOURCE 500
#define N 7
// #define _GNU_SOURCE

// while (*envp != NULL)
//     printf("  %s\n", *(envp++));

// #define errExit(msg)                                                                                                   \
//     do                                                                                                                 \
//     {                                                                                                                  \
//         perror(msg);                                                                                                   \
//         exit(EXIT_FAILURE);                                                                                            \
//     } while (0)

// https://www.ibm.com/docs/en/zos/2.2.0?topic=lf-select-pselect-monitor-activity-files-sockets-message-queues

/* CELEBP72

   This example demonstrates the use of pselect()

   Expected output:
   Parent: Issuing pselect

   This is the child
   Child: Sending signal to the parent at:


   This is the signal handler
   Signal received: 14 (14 is SIGALRM)
   The pselect call was made at:

   The SIGALRM was caught at:

   TEST PASSED!

*/

time_t t1, t2;

void incatchr(int signum)
{
    double diff = 0;

    time(&t2);
    printf("\n\nThis is the signal handler\n");
    printf("Signal received: %d (14 is SIGALRM) \n", signum);
    printf("The pselect call was made at: \t%s\n", ctime(&t1));
    printf("The SIGALRM was caught at:    \t%s\n", ctime(&t2));
    diff = difftime(t2, t1);
    if (diff < 10)
    {
        printf("TEST FAILED!\n\n");
    }
    else
    {
        printf("TEST PASSED!\n\n");
    }
}

int main(void)
{
    int fd[1], rc, nfds = 3, fd1, fd2, fd3;
    pid_t cpid, ppid;
    fd_set fdsread;
    struct sigaction action, info;
    sigset_t pselect_set;
    struct timespec t;
    time_t t3;

    t.tv_sec = 10;
    t.tv_nsec = 0;

    FD_ZERO(&fdsread);

    action.sa_handler = incatchr;
    action.sa_flags = 0;
    sigaction(SIGALRM, &action, &info);

    sigemptyset(&pselect_set);
    sigaddset(&pselect_set, SIGALRM);

    fd1 = open("./testchd.txt", O_RDWR | O_CREAT);
    fd2 = open("./testchd2.txt", O_RDWR | O_CREAT);
    if ((rc = pipe(fd)) != 0)
    {
        printf("Error in pipe\n");
        return (-1);
    }

    FD_SET(fd[0], &fdsread);

    if ((cpid = fork()) < 0)
    {
        printf("Fork error\n");
        return (-1);
    }
    else
    {
        if (cpid == 0)
        {
            fd3 = open("./testchd.txt", O_RDWR | O_CREAT);
            printf("This is the child\n");
            sleep(2);
            ppid = getppid();
            time(&t3);
            printf("Child: Sending signal to the parent at: ");
            printf("%s", ctime(&t3));
            kill(ppid, SIGALRM);
            sleep(3);
            _exit(0);
        }
        else
        {
            printf("Parent: Issuing pselect\n\n");
            time(&t1);
            if (pselect(nfds, &fdsread, NULL, NULL, &t, &pselect_set) == -1)
                printf("Error in pselect\n");
        }
        close(fd[0]);
    }

    return 0;
}