#include <iostream>
#include <stdio.h>
#include <iomanip>
#include <cmath>
#include <ctime>
using namespace std;

int main(int argc, char const *argv[])
{
    // операция sizeof
    int a;
    short int b;
    float x;
    double y;
    long double z;
    int size;

    cout << "sizeof(b) " << sizeof(b) << endl;              // size = 2
    cout << "sizeof(char) " << sizeof(char) << endl;           // size = 1
    cout << "sizeof(int) " << sizeof(int) << endl;            // size = 4
    cout << "sizeof(a) " << sizeof(a) << endl;              // size = 4
    cout << "sizeof(x) " << sizeof(x) << endl;              // size = 4
    cout << "sizeof(double) " << sizeof(double) << endl;         // size = 8
    cout << "sizeof(z) " << sizeof(z) << endl;              // size = 8
    cout << "sizeof(long double) " << sizeof(long double) << endl;    // size = 16
    cout << "sizeof(bool) " << sizeof(bool) << endl;           // size = 1
    cout << "sizeof(true) " << sizeof(true) << endl;           // size = 1
    cout << "sizeof(28) " << sizeof(28) << endl;             // size = 4 - как тип int
    cout << "sizeof(9.8 + 5) " << sizeof(9.8 + 5) << endl;        // size = 8 - как тип double
    cout << "sizeof(\"Hello\") " << sizeof("Hello") << endl; // size = 13
    cout << "sizeof(\'\\n\') " << sizeof('\n') << endl;           // size = 1
    return 0;
}