/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   main.cpp
 * Author: AnNguyen
 *
 * Created on September 22, 2017, 3:30 PM
 */

#include <cstdlib>
#include<iostream>

using namespace std;

int n,stop,number=1;
void Init(int a[]);
void Out(int a[]);
int Stop(int a[]);
void Gen(int a[]);
void Method(int a[]);
/*
 * 
 */
int main(int argc, char** argv) {
    cout << "Nhap n = ";
    cin >> n;
    int a[n];
    Method(a);
    return 0;
}

void Init(int a[]){
    for(int i=0 ; i<n ; i++) a[i] = i+1;
}
void Out(int a[]){
    cout << number << " : ";
    number++;
    for(int i=0 ; i<n ; i++) cout << a[i];
    cout << "\n";
}
int Stop(int a[]){
    for(int i=0 ; i<n-1 ; i++) if(a[i]<a[i+1]) return 0;
    return 1;
}
void Gen(int a[]){
    int j = n-1;
    while(a[j]>a[j+1]) j--;
    int k=n;
    while(a[j]<a[k]) k--;
    int temp = a[j];
    a[j] = a[k];
    a[k] = temp;
    int l=j+1;
    int r=n;
    while(l<n){
        int temp = a[l];
        a[l] = a[r] ; 
        a[r] = temp;
        l++ ;
        r--;
    }
    
}
void Method(int a[]){
    Init(a);
    Out(a);
    stop = Stop(a);
    while(stop==0){
        Gen(a);
        Out(a);
        stop = Stop(a);
    }
}