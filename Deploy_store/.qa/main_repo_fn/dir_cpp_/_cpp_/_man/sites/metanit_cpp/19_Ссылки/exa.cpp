// Ссылки

#include <iostream>
#include <stdio.h>
#include <iomanip>
#include <cmath>
#include <ctime>
using namespace std;

int main(int argc, char const *argv[])
{
    int a = 5;

    cout << "&a = " << &a << endl;
    cout << "a = " << a << endl;

    int &refA = a;
    int *pA = &a;
    cout << "pA = " << pA << endl;   // 0x7fffd46cd8dc
    cout << "*pA = " << *pA << endl; // 5
    const int &constRefA = a;

    cout << "refA = " << refA << endl;           // 5
    cout << "constRefA = " << constRefA << endl; // 5

    cout << "&refA = " << &refA << endl;           // 0x7fffd46cd8dc
    cout << "&constRefA = " << &constRefA << endl; // 0x7fffd46cd8dc

    refA = 8;                                    // constRefA = 88; ошибка: присваивание доступной только на чтение ссылки «constRefA»
    cout << "refA = " << refA << endl;           // 8
    cout << "constRefA = " << constRefA << endl; // 8

    cout << "&refA = " << &refA << endl;           // 0x7fffd46cd8dc
    cout << "&constRefA = " << &constRefA << endl; // 0x7fffd46cd8dc

    return 0;
}