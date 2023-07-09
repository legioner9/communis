#include <iostream>
#include <stdio.h>
#include <iomanip>
#include <cmath>
#include <ctime>
#include <vector>
#include <string>
using namespace std;

void add_7_to_arg(const int);
int add_7_to_arg_ref(const int &);

int main(int argc, char const *argv[])
{
    int ar = 5;
    int ar_to_ref = 7;

    cout << "ar = " << ar << endl;
    cout << "ar_to_ref = " << ar_to_ref << endl;

    // add_7_to_arg(ar);
    int res = add_7_to_arg_ref(ar_to_ref);

    cout << "add_7_to_arg_ref(ar_to_ref) = " << res << endl;
    cout << "add_7_to_arg_ref(ar_to_ref) = " << add_7_to_arg_ref(ar_to_ref) << endl;
    cout << "ar = " << ar << endl;
    cout << "ar_to_ref = " << ar_to_ref << endl;

    return 0;
}

void add_7_to_arg(int n)
{
    cout << "add_7_to_arg: arg = " << n << endl;
    n = n + 7;
}

int add_7_to_arg_ref(const int &n)
{
    // cout << "add_7_to_arg_ref: arg = " << n << endl; it is RETURN result in cout!!!
    // n = n + 7;
    int n_inner = n;
    n_inner = n_inner + 7;
    // cout << "n_inner = " << n_inner << endl;
    return n_inner;
}
