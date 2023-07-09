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
// https://www.systutorials.com/a-posix_spawn-example-in-c-to-create-child-process-on-linux/

// Функции posix_spawn()и posix_spawnp()создают новый дочерний процесс
// из указанного образа процесса, созданного из обычного исполняемого файла.
// Его можно использовать для замены относительных сложных методов “fork-exec-wait” на fork()и exec().
// Однако, по сравнению с fork()и exec(), posix_spawn()менее представлен, если вы ищете в Интернете.
// В posix_spawn()руководстве приведены подробности. Однако этого все еще недостаточно,
// особенно для начинающих. Здесь я привожу пример программы на C, используемой posix_spawn()
// для создания дочерних процессов.

// Программа должна выполнить команду, /bin/sh -cкоторую вы передаете в качестве первого аргумента
// программе. Исходный код run.c выглядит следующим образом

extern char **environ;

void run_cmd(char *cmd)
{
    pid_t pid;
    char *argv[] = {"sh", "-c", cmd, NULL};
    int status;
    printf("Run command: %sn", cmd);
    status = posix_spawn(&pid, "/bin/sh", NULL, NULL, argv, environ);
    if (status == 0)
    {
        printf("Child pid: %in", pid);
        do
        {
            if (waitpid(pid, &status, 0) != -1)
            {
                printf("Child status %dn", WEXITSTATUS(status));
            }
            else
            {
                perror("waitpid");
                exit(1);
            }
        } while (!WIFEXITED(status) && !WIFSIGNALED(status));
    }
    else
    {
        printf("posix_spawn: %sn", strerror(status));
    }
}

int main(int argc,     // Number of strings in array argv
         char *argv[], // Array of command-line argument strings
         char **envp)  // Array of environment variable strings
{
    run_cmd(argv[1]);
    return 0;
}

// Из примера вы можете найтиposix_spawn(), что имеет свои преимущества и гибкость по сравнению 
// с другими подобными, хотя это немного утомительно с 6 аргументами.

// В отличие от system()and exec(), он возвращает pid нового дочернего процесса, который вы можете подождать waitpid(). Конечно, system()вам следует забыть, что вы изучили это в большинстве ситуаций.
// В отличие от fork()/vfork(), логика, которую вы реализуете, находится в рамках того же процесса, и вам не нужно думать о том, какая часть кода выполняется дочерним процессом, а какая выполняется 
// родительским процессом. Это также позволяет избежать проблем с vfork().
