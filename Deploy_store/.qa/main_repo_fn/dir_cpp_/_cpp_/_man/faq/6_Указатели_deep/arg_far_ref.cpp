#include <iostream>
#include <stdio.h>
#include <iomanip>
#include <cmath>
#include <ctime>
#include <vector>
#include <string>
using namespace std;

void add_7_to_arg(int);
void add_7_to_arg_ref(int &);

int main(int argc, char const *argv[])
{
    int ar = 5;
    int ar_to_ref = 7;

    cout << "ar = " << ar << endl;
    cout << "ar_to_ref = " << ar_to_ref << endl;

    add_7_to_arg(ar);
    add_7_to_arg_ref(ar_to_ref);

    cout << "ar = " << ar << endl;
    cout << "ar_to_ref = " << ar_to_ref << endl;

    return 0;
}

void add_7_to_arg(int n)
{
    cout << "arg = " << n << endl;
    n = n + 7;
}

void add_7_to_arg_ref(int &n)
{
    cout << "arg = " << n << endl;
    n = n + 7;
}
