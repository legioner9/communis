// пример использования функции fabs
 
#include <iostream>                                                // для оператора cout
#include <cmath>                                                   // для функции fabs
 
int main()
{
  std::cout << "модуль числа 3.1416 = " <<  fabs(3.1416) << std::endl;
  std::cout << "модуль числа -10.6 = "  <<  fabs(-10.6)  << std::endl;
  return 0;
}