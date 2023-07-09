#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>
#include <iso646.h>
#include <stdlib.h>
#include <time.h>
#include <limits.h>
#include <float.h>
#include <string.h>

//lc_

#define N 6

struct s
{
    char c;
    int n;
    double d;
    /* data */
};


int main(int argc, char const *argv[])
{
    /* code */
    struct s *p;
    p = malloc(sizeof(struct s));

    p->c = 'S';
    p->n = 24;
    p->d = 43;
    
    printf("sizeof(struct s) = %ld\n", sizeof(struct s));
    printf("p->c = %c\n", p->c);
    printf("p->n = %d\n", p->n);
    printf("p->d = %f\n", p->d);

    // sizeof(struct s) = 16
    // p->c = S
    // p->n = 24
    // p->d = 43.000000

    return 0;
}