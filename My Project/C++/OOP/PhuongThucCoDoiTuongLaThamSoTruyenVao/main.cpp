#include<iostream>
#include <cstdlib>

using namespace std;
//Phuong thuc co doi tuong la tham so truyen vao
// YC : Tinh tong cua 2 gioi ( so gio , so phut )
// 2h56 + 1h4 = 4h
class Time{
private:
    int Gio , Phut;
public:
    void Init(int gio , int phut){
        Gio = gio;
        Phut = phut;
    }
    void Out(){
        cout << this->Gio << " h ";
        cout << this->Phut<< "p";
    }
    Time Tong(Time T1 , Time T2){
        Phut = T1.Phut + T2.Phut;
        Gio  = T1.Gio + T2.Gio;
        if(Phut >= 60){
            Gio += Phut/60;
            Phut %= 60;
        }
        return *this;
    }
    
};

int main(int argc, char** argv) {
    Time T1 ,T2 ,T3;
    T1.Init(2 , 56);
    T2.Init(1 , 4);
    T3.Tong(T1 , T2);
    T3.Out();
    return 0;
}

