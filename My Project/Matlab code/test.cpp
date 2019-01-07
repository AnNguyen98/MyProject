#include<iostream>
using namespace std;    
  
class Test 
{ 
  static int i; 
  int j; 
}; 
  
int Test::i; 
  
int main() 
{ 
    cout << sizeof(Test) << endl; 
    return 0; 
} 