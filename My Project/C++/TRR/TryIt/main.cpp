/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   main.cpp
 * Author: AnNguyen
 *
 * Created on September 22, 2017, 1:49 PM
 */

#include <cstdlib>
#include<iostream>

using namespace std;

void Init(int a[] , int n);
void Out(int a[] , int n);
int Stop(int a[] , int n);
void Gen(int a[] , int n);
void Method(int a[] , int n);

/*
 * 
 */
int main(int argc, char** argv) {
    int n;
    cout << "Nhap n=";
    cin >> n;
    int a[n];
    Method(a,n);
    return 0;
}

void Init(int a[] , int n){
    for(int i=0 ; i<n ; i++) 
        a[i]=0;
}
void Out(int a[] , int n){
    for(int i=0 ; i<n ;i++){
        cout << a[i];
    }
    cout  << "\n";
}
void Gen(int a[] , int n){
    int i=n-1;
    while(a[i]==1) a[i--] =0;
    a[i] = 1;
}
int Stop(int a[] , int n){
    for(int i=0 ; i<n ;i++){
        if(a[i]==0) return 1;
    }
    return 0;
}
void Method(int a[] , int n){
    Init(a , n);
    Out(a , n);
    int s = Stop(a,n);
    while(s==1){
        Gen(a,n);
        s = Stop(a,n);
        Out(a,n);
    }
}

