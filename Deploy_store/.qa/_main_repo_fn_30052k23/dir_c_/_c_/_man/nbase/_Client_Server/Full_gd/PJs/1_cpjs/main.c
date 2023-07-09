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

#define PORT 5001
#define IP "127.0.0.1"

int main(int argc,     // Number of strings in array argv
         char *argv[], // Array of command-line argument strings
         char **envp)  // Array of environment variable strings
{
    int socket = socket_с(AF_INET, SOCK_DGRAM, 0, __FILE__, __LINE__, STMO_PRN, STIF_ONE, STRE_EXI);

    struct sockaddr_in addr;
    struct sockaddr_in result_addr;
    struct sockaddr_in recv_addr;
    char *buf;

    memset(&addr, 0, sizeof(struct sockaddr_in));
    memset(&result_addr, 0, sizeof(struct sockaddr_in));

    addr.sin_family = AF_INET;
    addr.sin_port = htons(PORT);
    addr.sin_addr.s_addr = inet_addr(IP); // 0x100124300

    printf("0x%o\n", inet_addr("192.168.0.1")); // 0x100124300 ^1^
    printf("0x%o\n", inet_addr("127.0.0.1"));   // 0x100000177

    prn_addr_from_socket_с(socket, __FILE__, __LINE__, STMO_PRN, STIF_ONE, STRE_EXI);

    bind_с(socket, (struct sockaddr *)&addr, sizeof(struct sockaddr_in), __FILE__, __LINE__, STMO_PRN, STIF_ONE, STRE_EXI);

    int namelen = sizeof(struct sockaddr_in);

    prn_addr_from_socket_с(socket, __FILE__, __LINE__, STMO_PRN, STIF_ONE, STRE_EXI); // ^2^

    sendto_с(socket, "mess!", 6, 0, (struct sockaddr *)&addr, sizeof(struct sockaddr_in), __FILE__, __LINE__, STMO_PRN, STIF_ONE, STRE_EXI);

    recvfrom_c(socket, buf, 6, 0, (struct sockaddr *)&recv_addr, &namelen, __FILE__, __LINE__, STMO_PRN, STIF_ONE, STRE_EXI);

    printf("buf = %s\n", buf);

    prn_addr_in_from_name_с(recv_addr, __FILE__, __LINE__, STMO_PRN, STIF_ONE, STRE_EXI);

    close_с(socket, __FILE__, __LINE__, STMO_PRN, STIF_ONE, STRE_EXI);
    return 0;
}
