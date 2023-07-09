// Арифметические операции

#include <iostream>
using namespace std;

int main(int argc, char const *argv[])
{
    double sum, dif, mul, div, div_o, a, b;
    cout << "Enter first arg: a";
    cin >> a;
    cout << "Enter first arg: b";
    cin >> b;

    sum = a + b;
    cout << a << "+" << b << "=" << sum << endl;
    dif = a - b;
    cout << a << "-" << b << "=" << dif << endl;
    mul = a * b;
    cout << a << "*" << b << "=" << mul << endl;
    div = a / b;
    cout << a << "/" << b << "=" << div << endl;

    int a_, b_;
    cout << "Enter first arg: a_ (int)";
    cin >> a_;
    cout << "Enter first arg: b_ (int)";
    cin >> b_;
    
    div_o = a_ % b_;
    cout << a_ << "%" << b_ << "=" << div_o << endl;

    return 0;
}