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
#include "lib/io_1.h"
#include "lib/lib_1.h"
#include "lib/uni_1.h"

#define N 6

#include <unistd.h>

char * buf;
int sum_to_n(int num) {

    int i,sum=0;
    for(i=1;i<=num;i++)
        sum+=i;

    return sum;
}

void printSum() {

    char line[10];
    
    printf("Enter a number: ");
    fgets(line, 10, stdin);
    
    if(line != NULL) 
        strtok(line, "\n"); 
    
    sprintf(buf,"sum=%d", sum_to_n(atoi(line)));
    
    printf("%s\n",buf);
}

int main(void) {

    printSum();
    return 0;
}
