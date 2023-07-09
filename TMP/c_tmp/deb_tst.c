#include <stdio.h>

int main()
{
    FILE *fs = fopen("a.tst", "r");
    printf("%d\n",fs->_IO_buf_end);
    return 0;
}