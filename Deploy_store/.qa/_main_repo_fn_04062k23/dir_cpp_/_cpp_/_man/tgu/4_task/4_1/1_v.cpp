#include <fstream>
#include <iostream>
using namespace std;

int main()
{
    int n = 0;
    int value, mutiplay = 1;
    cout << "Введите кол-во чисел: " << endl;
    cin >> n;

    ofstream out("myTextFile.txt");
    for (int i = 0; i < n; i++)
    {
        cout << "Введите " << i + 1 << "-ое число: " << endl;
        cin >> value;
        out << value << " ";
    }
    out.close();

    ifstream in("myTextFile.txt");

    for (int i = 0; i < n; i++)
    {
        in >> value;
        cout << "value: " << value << endl;
        mutiplay *= value;
        cout << "mutiplay: " << mutiplay << endl;
    }

    cout << "Square of mutiplay: " << mutiplay * mutiplay << endl;
    return 0;
}