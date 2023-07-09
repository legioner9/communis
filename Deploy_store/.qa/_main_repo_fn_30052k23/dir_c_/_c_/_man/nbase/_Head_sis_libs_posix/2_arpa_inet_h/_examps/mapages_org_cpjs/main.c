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

#include <unistd.h>
#include <fcntl.h>
#include <dirent.h>
#include <wordexp.h>

int main(int argc, char *argv[])
{
    unsigned char buf[sizeof(struct in6_addr)];
    int domain, s;
    char str[INET6_ADDRSTRLEN];
    if (argc != 3)
    {
        fprintf(stderr,
                "Использование: %s {i4|i6|<число>} строка\n", argv[0]);
        exit(EXIT_FAILURE);
    }
    domain = (strcmp(argv[1], "i4") == 0) ? AF_INET : (strcmp(argv[1], "i6") == 0) ? AF_INET6
                                                                                   : atoi(argv[1]);
    s = inet_pton(domain, argv[2], buf);
    if (s <= 0)
    {
        if (s == 0)
            fprintf(stderr, "Неверный формат представления");
        else
            perror("inet_pton");
        exit(EXIT_FAILURE);
    }
    if (inet_ntop(domain, buf, str, INET6_ADDRSTRLEN) == NULL)
    {
        perror("inet_ntop");
        exit(EXIT_FAILURE);
    }
    printf("%s\n", str);
    exit(EXIT_SUCCESS);
}
