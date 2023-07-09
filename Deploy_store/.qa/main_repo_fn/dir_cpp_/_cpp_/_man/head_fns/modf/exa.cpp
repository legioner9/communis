#include <iostream>                   // для оператора cout
#include <cmath>                      // для функции modf
 
int main()
{
  double val = 3.14159265,
         fractpart,                   // дробная часть
         intpart;                     // целая часть
 
  fractpart = modf(val , &intpart); // отделить дробную часть от целой
  std::cout << val << " = "
            << intpart << " + "
            << fractpart << std::endl;
  return 0;
}