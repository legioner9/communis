// Явное и неявное преобразование типов данных C++

#include <iostream>
#include <stdio.h>
#include <iomanip>
#include <cmath>
using namespace std;

int main(int argc, char const *argv[])
{
    cout << (15 / 2) << endl;         // результат равен 7
    cout << (float(15) / 2) << endl;  // результат равен 7.5, число 15 преобразуется в вещественный тип данных float.
    cout << (double(15) / 2) << endl; // результат равен 7.5 – тоже самое!!!

    // static_cast</*тип данных*/>(/*переменная или число*/)

    int ret = 15;
    static_cast<float>(ret) / 2; //результат равен 7.5

    int int_value15 = 15, int_value2 = 2;                                                   // объявляем две переменные типа int
    float float_value15 = 15, float_value2 = 2;                                             // объявляем две переменные типа float
    cout << fixed << setprecision(2)                                                        // определяем, при выводе чисел с плавающей точкой, два знака после запятой
         << "15   / 2   = " << int_value15 / int_value2 << endl                             //неявное преобразование типов данных
         << "15   / 2   = " << int_value15 / float_value2 << endl                           //неявное преобразование типов данных
         << "15   / 2   = " << float_value15 / int_value2 << endl                           //неявное преобразование типов данных
         << "15   / 2   = " << float_value15 / float_value2 << endl;                        //неявное преобразование типов данных
    cout << "15.0 / 2   = " << 15.0 / 2 << endl                                             // явное преобразование типа данных, число 15.0 - число с плавающей точкой
         << "15   / 2.0 = " << 15 / 2.0 << endl;                                            // явное преобразование типа данных, число 2.0  - число с плавающей точкой
    cout << "float(int_value15) / int_value2 = " << float(int_value15) / int_value2 << endl // явное преобразование типа данных
         << "15 / double(2) = " << 15 / double(2) << endl;                                  // используя приводимый тип как функцию
    cout << "static_cast<float>(15) / 2 = " << static_cast<float>(15) / 2 << endl           // унарная операция приведения типа
         << "static_cast<char>(55) = " << static_cast<char>(55) << endl                     // можно печатать различные символы из таблицы ASCII,
         << "static_cast<char>(68) = " << static_cast<char>(68) << endl;                    // в скобочках прописываем код символа, который находим в таблице ASCII

    return 0;
}
