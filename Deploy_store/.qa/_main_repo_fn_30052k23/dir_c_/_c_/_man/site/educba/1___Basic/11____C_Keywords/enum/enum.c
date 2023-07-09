#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>
#include <iso646.h>
#include <stdlib.h>
#include <time.h>
#include <limits.h>
#include <float.h>
#include <string.h>

// lc_

#define N 6
enum coin
{
    penny,
    nickel,
    dime,
    quarter,
    half_dollar,
    dollar
};
enum week
{
    Mon = 10,
    Tue,
    Wed,
    Thur,
    Fri = 10,
    Sat = 16,
    Sun
};
enum day
{
    Mond,
    Tues,
    Wedn,
    Thurs,
    Frid = 18,
    Satu = 11,
    Sund
};
int main(int argc, char const *argv[])
{

    enum coin money;
    money = dime;
    printf("The value of enum coin: %d\t%d\t%d\t%d\t%d\t%d\n\n", penny, nickel, dime, quarter, half_dollar, dollar);

    printf("The value of enum week: %d\t%d\t%d\t%d\t%d\t%d\t%d\n\n", Mon, Tue, Wed, Thur, Fri, Sat, Sun);
    printf("The default value of enum day: %d\t%d\t%d\t%d\t%d\t%d\t%d\n\n", Mond, Tues, Wedn, Thurs, Frid, Satu, Sund);

    return 0;
}