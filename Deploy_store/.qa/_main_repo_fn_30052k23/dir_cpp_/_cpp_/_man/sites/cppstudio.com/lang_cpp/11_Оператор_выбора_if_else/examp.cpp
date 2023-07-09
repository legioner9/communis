// Оператор выбора if else

#include <iostream>
#include <stdio.h>
#include <iomanip>
#include <cmath>
using namespace std;

int main(int argc, char const *argv[])
{
    cout << "Enter first number a:" << endl;
    int a;
    cin >> a;

    cout << "Enter first number b:" << endl;
    int b;
    cin >> b;

    if (a < b)
    {
        cout << a << "<" << b << endl;
    }
    else
    {
        cout << a << ">=" << b << endl;
    }


    return 0;
}