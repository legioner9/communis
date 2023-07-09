// Форматированный ввод/вывод

#include <iostream>
#include <stdio.h>
#include <iomanip>
#include <cmath>
using namespace std;

int main(int argc, char const *argv[])
{
    //Основные форматирующие функции-члены:
    cout.fill('/*symbol*/'); // устанавливает символ заполнитель
    // где symbol - символ заполнитель, символ передаётся в одинарных кавычках

    cout.width(/*width_field*/); // задает ширину поля
    // где width_field - количество позиций(одна позиция вмещает один символ)

    cout.precision(/*number*/); // задает количество знаков после десятичной точки
    // где number - количество знаков после десятичной точки

    // установка флага вывода
    cout.setf(ios::/*name_flag*/);
    // где name_flag - это имя флага

    // снятие флага вывода
    cout.unsetf(ios::/*name_flag*/);
    // где name_flag - это имя флага

    // установка нескольких флагов
    cout.setf(ios::/*name_flag1*/ | ios::/*name_flag2*/ | ios::/*name_flag_n*/);

    // снятие нескольких флагов
    cout.unsetf(ios::/*name_flag1*/ | ios::/*name_flag2*/ | ios::/*name_flag_n*/);
    return 0;
}
