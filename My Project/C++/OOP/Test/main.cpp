#include<iostream>
#include<vector>

using namespace std;

int main(){
    vector<int>Arr;
    for(int i=0 ; i<10 ; i++){
        Arr.push_back(i+1);
    }
    for(int i=0 ; i<10 ; i++){
        cout << Arr[i] <<"  ";
    }
    int sum=0 ;
    for(int i=0 ; i<Arr.size() ; i++){
        sum += Arr[i];
    }
    cout << "\nSum = " <<sum ;
    
    
    return 0;
}