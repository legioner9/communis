#include <iostream>
#include <stdio.h>
#include <iomanip>
#include <cmath>
#include <ctime>
#include <vector>
#include <string>
using namespace std;

int main(int argc, char const *argv[])
{
    int a;
    a = 5;
    // int *pa;
    // pa = &a;
    int *pa = &a;

    cout << boolalpha << "(*pa == a) = " << (*pa == a) << endl;

    int &b = a;
    int c = a;

    cout << "a = " << a << ", b = " << b << ", c = " << c << endl;       // a = 5, b = 0
    cout << "&a = " << &a << ", &b = " << &b << ", &c = " << &c << endl; // pa = pb
    // cout << "*pa = " << *pa << ", *pb = " << *pb << endl; // *pa = 5, *pb = 5

    b = b + 5;

    cout << "a = " << a << ", b = " << b << ", c = " << c << endl;       // a = 5, b = 0
    cout << "&a = " << &a << ", &b = " << &b << ", &c = " << &c << endl; // pa = pb
    // cout << "*pa = " << *pa << ", *pb = " << *pb << endl; // *pa = 5, *pb = 5

    return 0;
}