#include <iostream>
#include <stdio.h>
#include <iomanip>
#include <cmath>
#include <ctime>
using namespace std;

int main(int argc, char const *argv[])
{
    cout << "Enter first number a:" << endl;
    int a;
    cin >> a;

    cout << "Enter first number b:" << endl;
    int b;
    cin >> b;

    a > b ? cout << a << endl : cout << b << endl;
    return 0;
}
