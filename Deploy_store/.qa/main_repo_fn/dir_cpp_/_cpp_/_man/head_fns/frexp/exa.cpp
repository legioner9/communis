// пример использования функции frexp
 
#include <iostream>                               // для оператора cout
#include <cmath>                                  // для функции frexp
 
int main()
{
  double param = 8.0, result;
  int ex;                                         // степень
 
  result = frexp (param , &ex);                   // Двоичная мантисса значения val
  std::cout << result << "* 2^"
            << ex << " = " << param << std::endl;
  return 0;
}