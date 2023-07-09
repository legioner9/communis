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

//lc_

#define N 6

#include <sys/stat.h>
#include <sys/types.h>
#include <unistd.h>
#include <fcntl.h>
#include <dirent.h> 
#include <arpa/inet.h>


int main(int argc, char const *argv[])
{
    printf("%o\n", inet_addr("192.168.0.1"));//100124300
    // printf("%s\n", inet_ntoa(100124300));
    return 0;
}
