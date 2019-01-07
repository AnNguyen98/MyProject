#include<iostream>
#include <cstdlib>

using namespace std;

//CON TRO THIS
// 1.con tro this tham chieu den doi tuong dang goi ham thanh phan
class PhanSo{
private:
    int TuSo, MauSo;
public:
    // Note:::
    PhanSo RutGon();
    void Init();
    void OUt();
};
void PhanSo::Init(){
    cout << "Tu So = ";
    //cin >> TuSo;
    cin >> this->TuSo;
    cout << "Mau So = ";
    //cin >> MauSo;
    cin >> this->MauSo;
}
void PhanSo::OUt(){
    cout << this->TuSo <<"/"<<this->MauSo<<"\n";
}
// 2. Tra ve object hien tai
PhanSo PhanSo::RutGon(){
    int a,b; 
    a = abs (this->TuSo);
    b = abs (this->MauSo);
    //Tim uoc chung lon nhat
    while(a != b){
        if(a>b) a -= b;
        else  b -= a;
    }
    this->TuSo /= a;
    this->MauSo /= b;
    return *this;
}
int main(int argc, char** argv) {
    PhanSo ps;
    ps.Init();
    ps.OUt();
    ps.RutGon();
    ps.OUt();
    return 0;
}

