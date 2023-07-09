// Управляющие символы

#include <iostream>
using namespace std;

int main(int argc, char const *argv[])
{
    cout << "\t\tcontrol characters C++";                       // две табуляции и печать сообщения
    cout << "\rcppstudio.com\n";                                // возврат каретки на начало строки и печать сообщения
    cout << "\'formatting\' output with \"escape characters\""; // одинарные и двойные ковычки
    cout << "\a\a\a\a\a\a\a\a\a\a\a\a\a\a" << endl;             //звуковой сигнал биппера
    return 0;
}
