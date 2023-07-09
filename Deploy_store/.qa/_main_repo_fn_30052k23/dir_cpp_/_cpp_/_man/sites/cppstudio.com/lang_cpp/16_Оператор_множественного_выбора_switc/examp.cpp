// Оператор множественного выбора switc

#include <iostream>
#include <stdio.h>
#include <iomanip>
#include <cmath>
using namespace std;

int main(int argc, char const *argv[])
{
    cout << "Enter first number a {1 2 3}:" << endl;
    int a;
    cin >> a;

    switch (a)
    {
    case 1:
        cout << "Entered a = 1" << endl;
        break;
    case 2:
        cout << "Entered a = 2" << endl;
        break;
    case 3:
        cout << "Entered a = 3" << endl;
        break;

    default:
        cout << "WTF?" << endl;
        break;
    }
    return 0;
}