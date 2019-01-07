#include<iostream>
#include <cstdlib>

using namespace std;

//Nhap xuat thong tin cua mot hoc sinh
class HocSinh{
private:
    float DiemToan,DiemVan;
    string Name , Adress;
public:
    //c1 : Phuong thuc co the khai bao o day roi viet ngoai class ; 
    //c2 : Phuong thuc ghi trong class luon
    void Init(){
        cout << "Name : ";
        getline(cin ,Name);
        cout << "Adress : ";
        getline(cin , Adress);
        cout << "Diem Toan = ";
        cin >> DiemToan;
        cout << "Diem Van = ";
        cin >> DiemVan;
    }
    void Out();
};
// NHo cu phap voi nha>>>>
void HocSinh::Out(){
    cout << "\nName :" << Name;
    cout << "\nAdress : "<<Adress;
    cout << "\nDiem Toan : "<<DiemToan;
    cout << "\nDiem VAn : " <<DiemVan;
}

int main(int argc, char** argv) {
    HocSinh An;
    An.Init();//Ting dong goi
    An.Out();
    return 0;
}

