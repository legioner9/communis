// Логические операции

#include <iostream>
using namespace std;

int main(int argc, char *argv[])
{
    bool fa = false;
    bool tr = true;

    bool a1 = true, a2 = false; // объявление логических переменных
    bool a3 = true, a4 = false;
    cout << "Tablica istinnosti log operacii &&" << endl;
    cout << "true  && false: " << (a1 && a2) << endl // логическое И
         << "false && true: " << (a2 && a1) << endl
         << "true  && true: " << (a1 && a3) << endl
         << "false && false: " << (a2 && a4) << endl;
    cout << "Tablica istinnosti log operacii ||" << endl;
    cout << "true  || false: " << (a1 || a2) << endl // логическое ИЛИ
         << "false || true: " << (a2 || a1) << endl
         << "true  || true: " << (a1 || a3) << endl
         << "false || false: " << (a2 || a4) << endl;
    cout << "Tablica istinnosti log operacii !" << endl;
    cout << "!true: " << (!a1) << endl // логическое НЕ
         << "!false: " << (!a2) << endl;
    // system("pause");
    return 0;
}