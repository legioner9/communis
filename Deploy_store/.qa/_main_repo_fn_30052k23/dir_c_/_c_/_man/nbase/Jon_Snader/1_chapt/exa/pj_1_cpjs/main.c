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

// while (*envp != NULL)
//     printf("  %s\n", *(envp++));

int main(int argc,     // Number of strings in array argv
         char *argv[], // Array of command-line argument strings
         char **envp)  // Array of environment variable strings
{
    struct sockaddr_in peer;
    int s, rc;
    char buf[1];

    peer.sin_family = AF_INET;
    peer.sin_port = htons(7500);
    peer.sin_addr.s_addr = inet_addr("127.0.0.1");

    s = socket_с(AF_INET, SOCK_STREAM, 0, __FILE__, __LINE__, STMO_PRN, STIF_ONE, STRE_EXI);
    close_с(s,__FILE__, __LINE__, STMO_PRN, STIF_ONE, STRE_EXI);
    // connect_с(s, (struct sockaddr *)&peer, sizeof(peer), __FILE__, __LINE__, STMO_PRN, STIF_ONE, STRE_EXI);
    // bind_с(s, (struct sockaddr *)&peer, sizeof(peer), __FILE__, __LINE__, STMO_PRN, STIF_ONE, STRE_EXI);
    connect_с(s, (struct sockaddr *)&peer, sizeof(peer), __FILE__, __LINE__, STMO_PRN, STIF_ONE, STRE_EXI);
    // printf("%d\n", rc);
    // fflush(stdout);
    send_с(s, "1", 1, 0, __FILE__, __LINE__, STMO_PRN, STIF_ONE, STRE_EXI);
    recv_с(s, buf, 1, 0, __FILE__, __LINE__, STMO_PRN, STIF_ONE, STRE_EXI);
    printf("buf = %c\n", buf[0]);

    return 0;
}
