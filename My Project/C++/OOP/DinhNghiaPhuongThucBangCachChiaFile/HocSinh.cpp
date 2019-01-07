#include "HocSinh.h"
#include<iostream>

void HocSinh::Init(){
    cout << "Name :";
    getline(cin , Name);
    cout << "Adress :";
    getline(cin , Adress);
    cout << "Diem Toan = ";
    cin >> DiemToan;
    cout << "Diem Van = ";
    cin >> DiemVan;
}
void HocSinh::Out(){
    cout << "\nName : " << Name;
    cout << "\nAdress : " << Adress;
    cout << "\nDiem Toan : "<< DiemToan;
    cout << "\nDiem Van : " << DiemVan;
}
HocSinh::HocSinh() {
    
}
HocSinh::HocSinh(const HocSinh& orig) {
}
HocSinh::~HocSinh() {
}

