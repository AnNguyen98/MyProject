/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   main.cpp
 * Author: AnNguyen
 *
 * Created on September 22, 2017, 4:33 PM
 */

#include <cstdlib>
#include<iostream>

using namespace std;

int n,number=1;

void Out(int b[]);
void Try(int i , int b[]);

/*
 * 
 */
int main(int argc, char** argv) {
    cout << "Nhap n = ";
    cin >> n ;
    int b[n];
    Try(1,b);
    return 0;
}

void Out(int b[]){
    cout << number <<" : " ;
    number++;
    for(int i=0 ; i<n ; i++){
        cout << b[i];
    }
    cout << "\n";
}
void Try(int i , int b[]){
    for(int j=0 ; j<=1; j++){
        b[i] = j;
        if(i==n) Out(b);
        else Try(i+1,b);
    }
}