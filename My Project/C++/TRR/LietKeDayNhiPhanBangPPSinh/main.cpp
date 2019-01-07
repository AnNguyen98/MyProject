/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   main.cpp
 * Author: AnNguyen
 *
 * Created on September 18, 2017, 9:12 AM
 */

#include <cstdlib>
#include<iostream>
using namespace std;

void Init(int b[] , int n);
void Out(int b[] , int n);
int Islast(int b[] , int n);
void Gen(int b[] , int n);
void Method(int b[] , int n);

/*
 * 
 */
int main(int argc, char** argv) {
    int n ; 
    cout << " n = ";
    cin >> n;
    int b[n+1];
    Method(b , n);

    return 0;
}

void Init(int b[] , int n){
    for(int i=1 ; i<=n ; i++){
        b[i] = 0;
    }
}
void Out(int b[] , int n){
    for(int i=1 ; i<=n ; i++){
        cout << b[i];
    }
    cout << "\n";
}
int Isclast(int b[] , int n){
    for(int i=1 ; i<=n ; i++){
        if(b[i]==0) return 0;
    }
    return 1;
}
void Gen(int b[] , int n){
    int i=n ; 
    while(b[i]==1) b[i--] = 0;
    b[i] = 1;
}
void Method(int b[] , int n){
    Init(b , n);
    Out(b , n);
    int stop = Isclast(b , n);
    while(stop==0){
        Gen(b , n);
        Out(b , n);
        stop = Isclast(b , n);
    }
}