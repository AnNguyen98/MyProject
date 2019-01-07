#include<iostream>
#include <cstdlib>

using namespace std;
class HocSinh{
    //Khai bao thuoc tinh (or cai dat luon)
    //Khai bao phuong thuc (or ca dat luon)
    //private : CHi su dung trong class
    //public : Su dung o the gioi ben ngoai
    //protected : Lien quan den ke thua
    //Khai bao thuoc tinh : Giong khai bao bien
    //Khai bao phuong thuc : Giong khai bao ham
    // Mac dinh khi khong khai bao la ____"private"
private:
    string Name;
    void Init();
public:
    string Adress;
    void Out(){
        cout << Adress;
    };
protected:
    
    
};

int main(int argc, char** argv) {
    HocSinh An;//Khoi tao doi tuong
    An.Adress = "Ha Tinh";
    An.Out();
    
    return 0;
}

