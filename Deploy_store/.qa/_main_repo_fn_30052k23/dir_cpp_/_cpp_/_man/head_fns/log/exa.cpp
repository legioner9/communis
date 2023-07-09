#include <iostream>                      // для оператора cout
#include <cmath>                         // для функции log
 
int main()
{
  double val = 5.5, result;
 
  result = log (val);                  // вычисляем натуральный логарифм
  std::cout << "ln(" << val << ") = "
            << result << std::endl;
  return 0;
}