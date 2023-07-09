#include <iostream>
#include <stdio.h>
#include <iomanip>
#include <cmath>
#include <ctime>
#include <vector>
#include <string>
using namespace std;

void add_7_to_arg(int);

int main(int argc, char const *argv[])
{
    int ar = 5;
    cout << "ar = " << ar << endl;

    int &idAr = ar;
    cout << "idAr = " << idAr << endl;

    add_7_to_arg(idAr);
    cout << "ar = " << ar << endl;
    cout << "idAr = " << idAr << endl;

    return 0;
}

void add_7_to_arg(int n)
{
    cout << "arg = " << n << endl;
    n = n + 7;
}