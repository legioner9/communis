#include <iostream>
#include <fstream>
#include <vector>
#include <string>
#include <sstream>
#include <iterator>
#include <ctime>

using namespace std;

int main(){
	setlocale(0, "Russian");
    
    std::ifstream infile("file.txt");
    std::string surname;
    std::string sex;
    std::string education;
    int birthYear;
    
	time_t theTime = time(NULL);
	struct tm *aTime = localtime(&theTime);
	int currentYearth = aTime->tm_year + 1900;
    
    int highEducationCount = 0;
    int under30YearsOld = 0;
    while (infile >> surname >> sex >> education >> birthYear)
	{
		if (sex == "�������" && education == "������")
			highEducationCount++;
		if (currentYearth - birthYear <= 30)
			under30YearsOld++;
	}
	cout << "������ � ������ ������������: " << highEducationCount << endl;
	cout << "����������� �� ������ 30 ���: " << under30YearsOld << endl;
    
    return 0;
}
