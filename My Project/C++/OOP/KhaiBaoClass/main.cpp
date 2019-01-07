/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   main.cpp
 * Author: AnNguyen
 *
 * Created on September 19, 2017, 10:58 AM
 */

#include <cstdlib>
#include<iostream>
#include<string>
using namespace std;

class SinhVien{
public :
    string Name;
    int Age;
    void OutName(){
        cout << "Name :" << Name;
    };
    string ID;
    int Salary;
    void Init(){
        fflush(stdin);
        cout << "ID :";
        getline(cin , ID);
        cout << "Salary :";
        cin >> Salary;
    };
   //c1:
    void Out();
private :
    
    // Ngoai ra can co protected:
};
//c2:
void SinhVien::Out(){
    cout << "ID = " << ID << endl;
    cout << "Salary = " << Salary << endl;
}

/*
 * 
 */
int main(int argc, char** argv) {
    SinhVien HS;
    HS.Age = 19;
    HS.Name = "Nguyen The An.\n";
    HS.OutName();
    HS.Init();
    HS.Out();
    
    
    

    return 0;
}

