
#ifndef HOCSINH_H
#define HOCSINH_H
#include<iostream>

using namespace std;

class HocSinh {
private:
    string Name , Adress;
    float DiemToan , DiemVan;
public:
    //Khai bao phuong thuc o .h cai dat o .cpp
    void Init();
    void Out();
    HocSinh();//Phuong thuc khoi tao mac dinh
    HocSinh(const HocSinh& orig);
    virtual ~HocSinh();//Phuong thuc pha huy
private:

};

#endif /* HOCSINH_H */

