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

// #include "lib/all_h.h"

#include "env_1.h"

// while (*envp != NULL)
//     printf("  %s\n", *(envp++));

int main(int argc,     // Number of strings in array argv
         char *argv[], // Array of command-line argument strings
         char **envp)  // Array of environment variable strings
{
    int socket_connect = socket_с(AF_INET, SOCK_STREAM, 0, __FILE__, __LINE__, STMO_PRN, STIF_ONE, STRE_EXI);

    struct sockaddr_in addr;
    struct sockaddr_in result_addr;
    struct sockaddr_in recv_addr;

    char buf[PACK_SIZE];

    memset(&addr, 0, sizeof(struct sockaddr_in));

    addr.sin_family = AF_INET;
    addr.sin_port = htons(PORT);
    addr.sin_addr.s_addr = inet_addr(IP); // 0x100124300

    int namelen = sizeof(addr);
    connect_с(socket_connect, (struct sockaddr *)&addr, namelen, __FILE__, __LINE__, STMO_PRN, STIF_ONE, STRE_MNS);

    prn_addr_from_socket_lc_1_с(socket_connect, __FILE__, __LINE__, STMO_PRN, STIF_ONE, STRE_EXI);

    char *send_str = "Mess from client!";
    int send_length = strlen(send_str) + 1;

    send_whilen_lc_2_с(socket_connect, send_str, PACK_SIZE, 0, __FILE__, __LINE__, STMO_PRN, STIF_ONE, STRE_EXI);
    // recv_whilen_lc_2_с(socket_connect, buf, PACK_SIZE, 0, __FILE__, __LINE__, STMO_PRN, STIF_ONE, STRE_EXI);
    recv_с(socket_connect, buf, PACK_SIZE, 0, __FILE__, __LINE__, STMO_PRN, STIF_ONE, STRE_EXI);

    printf("Buf = %s\n", buf);

    close_с(socket_connect, __FILE__, __LINE__, STMO_PRN, STIF_ONE, STRE_EXI);
    return 0;
}
