// Оператор выбора if

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

    if ((a < b) && (a > 0))
    {
        cout << 0 << "<" << a << "<" << b << endl;
    }
    if (a > b)
    {
        cout << a << ">" << b << endl;
    }
    if (a == b)
    {
        cout << a << "=" << b << endl;
    }
     if (a < 0)
    {
        cout << a << "<" << 0 << endl;
    }

    return 0;
}