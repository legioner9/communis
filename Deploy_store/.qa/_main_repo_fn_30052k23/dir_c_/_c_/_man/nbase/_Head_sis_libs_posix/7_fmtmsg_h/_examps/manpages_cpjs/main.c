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
#include "lib/l3p_1.h"
#include "lib/io_1.h"
#include "lib/lib_1.h"
#include "lib/uni_1.h"
#include "lib/fcntl_1.h"
#include "lib/dirent_1.h"
#include "lib/socket_1.h"
#include "lib/sys_stat_1.h"
#include "lib/st_mode_1.h"

#define N 6

#include <sys/stat.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <sys/un.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <aio.h>
#include <signal.h>

#include <unistd.h>
#include <fcntl.h>
#include <dirent.h>
#include <wordexp.h>
#include <fmtmsg.h>

int main(void)
{
    long class = MM_PRINT | MM_SOFT | MM_OPSYS | MM_RECOVER;
    int err;
    err = fmtmsg(class, "util-linux:mount", MM_ERROR,
                 "неизвестный параметр mount", "Смотрите mount(8).",
                 "util-linux:mount:017");
    switch (err)
    {
    case MM_OK:
        break;
    case MM_NOTOK:
        printf("Нечего печатать\n");
        break;
    case MM_NOMSG:
        printf("Нечего печатать в stderr\n");
        break;
    case MM_NOCON:
        printf("Нет вывода на консоль\n");
        break;
    default:
        printf("Неизвестная ошибка fmtmsg()\n");
    }
    exit(EXIT_SUCCESS);
}
