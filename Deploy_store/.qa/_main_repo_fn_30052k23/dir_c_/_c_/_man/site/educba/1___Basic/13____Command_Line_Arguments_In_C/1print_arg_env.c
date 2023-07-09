#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>
#include <iso646.h>
#include <stdlib.h>
#include <time.h>
#include <limits.h>
#include <float.h>

// lc_

#define N 6

int main(int argc,     // Number of strings in array argv
         char *argv[], // Array of command-line argument strings
         char **envp)  // Array of environment variable strings
{
    int count;

    // Display each command-line argument.
    printf("\nCommand-line arguments:\n");
    for (count = 0; count < argc; count++)
        printf("  argv[%d] :  %s\n", count, argv[count]);

    // Display each environment variable.
    printf("\nEnvironment variables:\n");
    while (*envp != NULL)
        printf("  %s\n", *(envp++));

    return 0;
}