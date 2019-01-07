#include<iostream>

using namespace std;


int main(int argc, char** argv) {
    int n;
	int N = 0;
	do{
		cout << "Nhap vao so N :\n";
		cin >> n;
	}while(n<0);
	for(int i=0 ; i<=n ; i++){
		N += i;
	}
	cout << "\nN = " << N;
	return 0;
}

