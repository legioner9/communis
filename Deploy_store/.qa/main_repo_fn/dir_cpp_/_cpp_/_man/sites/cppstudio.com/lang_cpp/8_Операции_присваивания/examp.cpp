// Операции присваивания

#include <iostream>
using namespace std;
 
int main(int argc, char* argv[])
{
    int value = 256;
    cout << "value = " << value << endl;
    value += 256; // сокращённое выражение с использованием операции присваивания - сложения
    cout << "value += 256; >> " << value << endl;
    value -= 256; // сокращённое выражение с использованием операции присваивания - вычитания
    cout << "value -= 256; >> " << value << endl;
    value *= 2; // сокращённое выражение с использованием операции присваивания - умножения
    cout << "value *= 2;   >> " << value << endl;
    value /= 8; // сокращённое выражение с использованием операции присваивания - деления
    cout << "value /= 8;   >> " << value << endl;
    system("pause");
    return 0;
}