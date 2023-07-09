// #include <assert.h>
// #include <ctype.h>
// #include <errno.h>
// #include <fenv.h>
// #include <float.h>
// #include <inttypes.h>
// #include <iso646.h>
// #include <limits.h>
// #include <locale.h>
// #include <math.h>
// #include <setjmp.h>
// #include <signal.h>
// #include <stdarg.h>
// #include <stdbool.h>
// #include <stddef.h>
// #include <stdint.h>
// #include <stdio.h>
// #include <stdlib.h>
// #include <string.h>
// #include <tgmath.h>
// #include <time.h>
// #include <uchar.h>
// #include <wchar.h>
// #include <wctype.h>

// // LIB FROM ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_lib
// #include "lib/lc_0.h"
// #include "lib/lc_1.h"
// #include "lib/l3p_1.h"
// #include "lib/io_1.h"
// #include "lib/lib_1.h"
// #include "lib/uni_1.h"
// #include "lib/fcntl_1.h"
// #include "lib/dirent_1.h"
// #include "lib/socket_1.h"
// #include "lib/sys_stat_1.h"
// #include "lib/st_mode_1.h"

// #define N 6

// #include <sys/stat.h>
// #include <sys/types.h>
// #include <sys/socket.h>
// #include <sys/un.h>
// #include <netinet/in.h>
// #include <arpa/inet.h>
// #include <aio.h>
// #include <signal.h>

// #include <unistd.h>
// #include <fcntl.h>
// #include <dirent.h>
// #include <wordexp.h>

#define _GNU_SOURCE
#include <dlfcn.h>
#include <link.h>
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[])
{
    void *handle;
    Dl_serinfo serinfo;
    Dl_serinfo *sip;
    int j;
    if (argc != 2)
    {
        fprintf(stderr, "Использование: %s <libpath>\n", argv[0]);
        exit(EXIT_FAILURE);
    }
    /* получаем описатель общих объектов, заданных в командной строке */
    handle = dlopen(argv[1], RTLD_NOW);
    if (handle == NULL)
    {
        fprintf(stderr, "ошибка dlopen(): %s\n", dlerror());
        exit(EXIT_FAILURE);
    }
    /* определяем размер буфера, который мы должны передать
       RTLD_DI_SERINFO */
    if (dlinfo(handle, RTLD_DI_SERINFOSIZE, &serinfo) == -1)
    {
        fprintf(stderr, "ошибка RTLD_DI_SERINFOSIZE: %s\n", dlerror());
        exit(EXIT_FAILURE);
    }
    /* выделяем буфер для RTLD_DI_SERINFO */
    sip = malloc(serinfo.dls_size);
    if (sip == NULL)
    {
        perror("malloc");
        exit(EXIT_FAILURE);
    }
    /* инициализируем поля 'dls_size' и 'dls_cnt' в только
       что выделенном буфере */
    if (dlinfo(handle, RTLD_DI_SERINFOSIZE, sip) == -1)
    {
        fprintf(stderr, "ошибка RTLD_DI_SERINFOSIZE: %s\n", dlerror());
        exit(EXIT_FAILURE);
    }
    /* получаем и печатаем список поиска библиотек */
    if (dlinfo(handle, RTLD_DI_SERINFO, sip) == -1)
    {
        fprintf(stderr, "ошибка RTLD_DI_SERINFO: %s\n", dlerror());
        exit(EXIT_FAILURE);
    }
    for (j = 0; j < serinfo.dls_cnt; j++)
        printf("dls_serpath[%d].dls_name = %s\n",
               j, sip->dls_serpath[j].dls_name);
    exit(EXIT_SUCCESS);
}