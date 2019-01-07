
#include <cstdlib>
#include<iostream>
#include<math.h>

using namespace std;

void Init(int n);
int KTSCP(int n);
int TongSCP(int n);
void Out(int n);

int main(int argc, char** argv) {
    int n ,tong =0;
    do{
        cout << "Nhap n ";
        cin >> n;
        if(KTSCP(n) == 1) tong += n;
    }while(n>0);
    cout << "Tong SCP = " << tong;
    return 0;
}

int KTSCP(int n){
    if((int)sqrt(n)==sqrt(n))        return 1;
}
