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
#include <poll.h>
#include <pthread.h>
#include <pwd.h>
#include <regex.h>
#include <sched.h>
#include <search.h>
#include <semaphore.h>
#include <signal.h>
#include <spawn.h>
#include <unistd.h>
#include <wchar.h>
#include <wordexp.h>

#define _XOPEN_SOURCE 500
// https://manpages.debian.org/bullseye/manpages-dev/posix_spawn.3.en.html

#define errExit(msg)                                                                                                   \
    do                                                                                                                 \
    {                                                                                                                  \
        perror(msg);                                                                                                   \
        exit(EXIT_FAILURE);                                                                                            \
    } while (0)

#define errExitEN(en, msg)                                                                                             \
    do                                                                                                                 \
    {                                                                                                                  \
        errno = en;                                                                                                    \
        perror(msg);                                                                                                   \
        exit(EXIT_FAILURE);                                                                                            \
    } while (0)

char **environ;

int main(int argc,     // Number of strings in array argv
         char *argv[], // Array of command-line argument strings
         char **envp)  // Array of environment variable strings
{
    pid_t child_pid;
    int s, opt, status;
    sigset_t mask;
    posix_spawnattr_t attr;
    posix_spawnattr_t *attrp;
    posix_spawn_file_actions_t file_actions;
    posix_spawn_file_actions_t *file_actionsp;

    /* Parse command-line options, which can be used to specify an
       attributes object and file actions object for the child. */

    attrp = NULL;
    file_actionsp = NULL;

    while ((opt = getopt(argc, argv, "sc")) != -1)
    {
        switch (opt)
        {
        case 'c': /* -c: close standard output in child */
            /* Create a file actions object and add a "close"
               action to it */

            s = posix_spawn_file_actions_init(&file_actions);
            if (s != 0)
                errExitEN(s, "posix_spawn_file_actions_init");
            s = posix_spawn_file_actions_addclose(&file_actions, STDOUT_FILENO);
            if (s != 0)
                errExitEN(s, "posix_spawn_file_actions_addclose");
            file_actionsp = &file_actions;
            break;
        case 's': /* -s: block all signals in child */
            /* Create an attributes object and add a "set signal mask"
               action to it */

            s = posix_spawnattr_init(&attr);
            if (s != 0)
                errExitEN(s, "posix_spawnattr_init");
            s = posix_spawnattr_setflags(&attr, POSIX_SPAWN_SETSIGMASK);
            if (s != 0)
                errExitEN(s, "posix_spawnattr_setflags");
            sigfillset(&mask);
            s = posix_spawnattr_setsigmask(&attr, &mask);
            if (s != 0)
                errExitEN(s, "posix_spawnattr_setsigmask");
            attrp = &attr;
            break;
        }
    }

    /* Spawn the child. The name of the program to execute and the
       command-line arguments are taken from the command-line arguments
       of this program. The environment of the program execed in the
       child is made the same as the parent's environment. */

    s = posix_spawnp(&child_pid, argv[optind], file_actionsp, attrp, &argv[optind], environ);
    if (s != 0)
        errExitEN(s, "posix_spawn");
    /* Destroy any objects that we created earlier */
    if (attrp != NULL)
    {
        s = posix_spawnattr_destroy(attrp);
        if (s != 0)
            errExitEN(s, "posix_spawnattr_destroy");
    }
    if (file_actionsp != NULL)
    {
        s = posix_spawn_file_actions_destroy(file_actionsp);
        if (s != 0)
            errExitEN(s, "posix_spawn_file_actions_destroy");
    }
    printf("PID of child: %jd\n", (intmax_t)child_pid);
    /* Monitor status of the child until it terminates */

    do
    {
        s = waitpid(child_pid, &status, WUNTRACED | WCONTINUED);
        if (s == -1)
            errExit("waitpid");
        printf("Child status: ");
        if (WIFEXITED(status))
        {
            printf("exited, status=%d\n", WEXITSTATUS(status));
        }
        else if (WIFSIGNALED(status))
        {
            printf("killed by signal %d\n", WTERMSIG(status));
        }
        else if (WIFSTOPPED(status))
        {
            printf("stopped by signal %d\n", WSTOPSIG(status));
        }
        else if (WIFCONTINUED(status))
        {
            printf("continued\n");
        }

    } while (!WIFEXITED(status) && !WIFSIGNALED(status));
    return 0;
}
