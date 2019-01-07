/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   main.cpp
 * Author: AnNguyen
 *
 * Created on September 22, 2017, 2:30 PM
 */

#include <cstdlib>
#include<iostream>

using namespace std;

int stop , n;

void Out(int a[] , int k);
void Init(int a[] ,int k ); 
int Stop(int a[] ,int k);
void Method(int a[] , int k);
void Gen(int a[] , int k);

/*
 * 
 */
int main(int argc, char** argv) {
    int k ;
    cout << "Nhap n = ";
    cin >> n;
    cout << "Nhap k = ";
    cin >> k ;
    int a[k] ;
    Method(a,k);
    return 0;
}

void Out(int a[] , int k){
    for(int i=0 ; i<n ;i++){
        cout << a[i] <<"  ";
    }
    cout << "\n";
}
void Init(int a[] ,int k){
    for(int i=0 ; i<k ; i++){
        a[i] = i+1;
    }
}
int Stop(int a[] , int k){
    for(int i=k-1 ; i>=0 ; i--) if(a[i]!=n-k+i) return 1;
    return 0;
}
void Gen(int a[] , int k){
    int i=k-1;
    while(a[i]=n-k+i) i--;
    a[i]++;
    int j;
    for( j=i+1 ; i<k ; j++) a[j] = a[i] +j -i;
}
void Method(int a[] ,int k){
    Init(a,k);
    Out(a,k);
    stop = Stop(a,k);
    while(stop==1){
        Gen(a,k);
        stop = Stop(a,k);
        Out(a,k);
    }
}