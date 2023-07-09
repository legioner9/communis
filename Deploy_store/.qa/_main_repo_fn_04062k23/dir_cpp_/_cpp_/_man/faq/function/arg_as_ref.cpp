#include <iostream>
#include <stdio.h>
#include <iomanip>
#include <cmath>
#include <ctime>
#include <vector>
#include <string>
using namespace std;

void add_7_to_arg_ref(int &);

int main(int argc, char const *argv[])
{
    int ar = 5;
    cout << "ar = " << ar << endl;

    add_7_to_arg_ref(ar);
    cout << "ar = " << ar << endl;

    return 0;
}

void add_7_to_arg_ref(int &n)
{
    cout << "arg = " << n << endl;
    n = n + 7;
}