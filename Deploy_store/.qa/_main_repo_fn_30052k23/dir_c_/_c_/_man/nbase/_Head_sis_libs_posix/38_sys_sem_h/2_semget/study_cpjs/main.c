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
#include <sys/ipc.h>
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
// #define _GNU_SOURCE

static void usage(const char *pname)
{
    fprintf(stderr, "Usage: %s [-cx] pathname proj-id num-sems\n", pname);
    fprintf(stderr, "    -c           Use IPC_CREAT flag\n");
    fprintf(stderr, "    -x           Use IPC_EXCL flag\n");
    exit(EXIT_FAILURE);
};

int main(int argc,     // Number of strings in array argv
         char *argv[], // Array of command-line argument strings
         char **envp)  // Array of environment variable strings
{
   int semid, nsems, flags, opt;
    key_t key;

    flags = 0;
    while ((opt = getopt(argc, argv, "cx")) != -1)
    {
        switch (opt)
        {
        case 'c':
            flags |= IPC_CREAT;
            break;
        case 'x':
            flags |= IPC_EXCL;
            break;
        default:
            usage(argv[0]);
        }
    }

    if (argc != optind + 3)
        usage(argv[0]);

    key = ftok(argv[optind], argv[optind + 1][0]);
    if (key == -1)
    {
        perror("ftok");
        exit(EXIT_FAILURE);
    }

    nsems = atoi(argv[optind + 2]);

    semid = semget(key, nsems, flags | 0600);
    if (semid == -1)
    {
        perror("semget");
        exit(EXIT_FAILURE);
    }

    printf("ID = %d\n", semid);

    return 0;
}

//  Программа, показанная ниже, использует semget() для создания нового
// набора семафоров или получения идентификатора существующего набора. Он генерирует ключ
// для semget() с помощью ftok(3). Первые два аргумента командной строки
// используются в качестве аргументов pathname и proj_id для ftok(3).
// Третий аргумент командной строки - это целое число, которое определяет аргумент
// nsems для semget(). Параметры командной строки можно использовать для
// указания флагов IPC_CREAT (-c) и IPC_EXCL (-x) для вызова
// semget(). Использование этой программы продемонстрировано ниже.

//  Сначала мы создаем два файла, которые будут использоваться для генерации ключей
// с помощью ftok(3), создаем два набора семафоров с использованием этих файлов, а
// затем перечисляем наборы с помощью ipcs(1):

//    $ touch mykey mykey2
//    $ ./t_semget -c mykey p 1
//    ID = 9
//    $ ./t_semget -c mykey2 p 2
//    ID = 10
//    $ ipcs -s

//    ------ Semaphore Arrays --------
//    key        semid      owner      perms      nsems
//    0x7004136d 9          mtk        600        1
//    0x70041368 10         mtk        600        2

//  Далее мы продемонстрируем, что когда semctl(2) присваивается тот же ключ
//  (сгенерированный теми же аргументами, что и ftok(3)), он возвращает
// идентификатор уже существующего набора семафоров:

//    $ ./t_semget -c mykey p 1
//    ID = 9

//  Наконец, мы демонстрируем тип коллизии, которая может возникнуть, когда
// ftok(3) присваивается другое имя пути аргументы с одинаковым
// номером индекса:

//    $ ln mykey link
//    $ ls -i1 link mykey
//    2233197 link
//    2233197 mykey
//    $ ./t_semget link p 1       # Generates same key as 'mykey'
//    ID = 9
