#include <fstream>
#include <iostream>
using namespace std;

struct tour //структура производимой продукции предприятием
{
    string country;
    int duration;
    int cost;
};

int main()
{
    tour t_w_1 = {"USA", 20, 1000};
    tour t_w_2 = {"USSR", 10, 600};
    tour t_r;

    // create file with 2 struct tour
    FILE *pFw = fopen("myTextFile", "wb");
    fwrite(&t_w_1, sizeof(tour), 1, pFw);
    fwrite(&t_w_2, sizeof(tour), 1, pFw);
    fclose(pFw);

    // search in file
    FILE *pFr = fopen("myTextFile", "rb");

    int number_of_days;
    cout << "Enter number of days (int >=0) :\n";
    cin >> number_of_days;
    cout << "Number of days : " << number_of_days << endl;

    string tour_country;
    cout << "Enter country tour (USA or USSR) :\n";
    cin >> tour_country;
    cout << "country tour : " << tour_country << endl;

    int result = 0;
    string country_;
    int cost_;

    for (int i = 0; i < 2; i++)
    {
        fread(&t_r, sizeof(tour), 1, pFr);
        // cout << "i = " << i << "\nt_r.country = " << t_r.country << "\ntour_country = " << tour_country << endl;
        country_ = t_r.country;
        cost_ = t_r.cost;
        int trf = (country_ == tour_country);
        // cout << "\nt_r.country == tour_country :" << trf << endl;

        if (trf)
        {
            result = cost_ * number_of_days;
            break;
        }
    }

    if (result != 0)
    {
        cout << "Country coast: " << cost_ << "\ntotal coast: " << result << endl;
    }
    else
    {
        cout << "Uexpected ERROR";
        return 1;
    }
    cout << "ferror(pFr) = " << ferror(pFr) << endl;
    fclose(pFr);

    return 0;
}