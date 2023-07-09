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
#include <sys/mman.h>
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
// https://linuxhint.com/using_mmap_function_linux/

// In Example3.c we have read and then write to the file.

int main(int argc,     // Number of strings in array argv
         char *argv[], // Array of command-line argument strings
         char **envp)  // Array of environment variable strings
{
if(argc < 2){
        printf("File path not mentioned\n");
        exit(0);
    }
   
    const char *filepath = argv[1];
    int fd = open(, O_RDWR);
    if(fd < 0){
        printf("\n\"%s \" could not open\n",
               filepath);
        exit(1);
    }

    struct stat statbuf;
    int err = fstat(fd, &statbuf);
    if(err < 0){
        printf("\n\"%s \" could not open\n",
                       filepath);
        exit(2);
    }

    char *ptr = mmap(NULL,statbuf.st_size,
            PROT_READ|PROT_WRITE,
                        MAP_SHARED,
            fd,0);
    if(ptr == MAP_FAILED){
        printf("Mapping Failed\n");
        return 1;
    }
    close(fd);

    ssize_t n = write(1,ptr,statbuf.st_size);
    if(n != statbuf.st_size){
        printf("Write failed\n");
    }


    // Reverse the file contents
    for(size_t i=0; i \n");
    n = write(1,ptr,statbuf.st_size);
    if(n != statbuf.st_size){
        printf("Write failed\n");
    }

    err = munmap(ptr, statbuf.st_size);

    if(err != 0){
        printf("UnMapping Failed\n");
        return 1;
    }
    return 0;
}
