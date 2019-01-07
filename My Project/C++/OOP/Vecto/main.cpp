/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   main.cpp
 * Author: AnNguyen
 *
 * Created on September 19, 2017, 10:03 AM
 */

#include <cstdlib>
#include<iostream>
#include<vector>

using namespace std;

/*
 * 
 */
int main(int argc, char** argv) {
    
    // vector <kieu du lieu> ten vector
    vector<int> Arr;
    for(int i=1 ; i<11 ; i++){
        Arr.push_back(i);
    }
    int sum = 0;
    for(int  i=1 ; i<11 ;i++){
        sum += Arr[i];
    }
    cout << sum <<"\n";
    for(int  i=0 ; i<Arr.size() ; i++){
        cout << Arr[i] <<" \t";
    }
     
    return 0;
}

