#include <iostream>
#include <stdio.h>
#include <iomanip>
#include <cmath>
#include <ctime>
#include <vector>
#include <string>
using namespace std;

int pres(int a = 3);

int main(int argc, char const *argv[])
{
    int ar = 5;
    int res_1 = pres(ar);
    int res_2 = pres();

    cout << "res_1 = " << res_1 << endl;
    cout << "res_2 = " << res_2 << endl;

    return 0;
}

int pres(int n)
{
    cout << "arg = " << n << endl;
    return n * n;
}