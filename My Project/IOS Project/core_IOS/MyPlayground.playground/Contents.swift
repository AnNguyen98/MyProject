//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
var number = 5
number = 3
//number = number/6
let old = 19
var age : Int
age = 19
var Name : String
Name = "An"
var x , y , z : Double
var xinchao : String
xinchao = "Hoc Swift tu bay gio!!"
print(xinchao)
print(age)
print("\(Name) \(age)")
print("I will do it")
print("Co len")
if(number < 4){
    print("Number = \(number)")
}
if(1>6){
    print("1 > 6")
}
else{
    print("1 < 6")
}
var MaxUInt8 : UInt8 = UInt8.max
var MaxUInt16 : UInt16 = UInt16.max
var MaxUInt32 : UInt32 = UInt32.max
var MaxUInt64 : UInt64 = UInt64.max
switch number {
case 1:
    print("1")
    break
case 2:
    print("2")
    break
case 3:
    print("3")
    break
default:
    print("Not")
    break
}
var MaxInt : Int = Int.max

//var float : Float = FLT_MAX
//var double : Double = DBL_MAX

//Vong lap
var a : Int = 1
while a<10 {
    print(a)
    a = a+1
}

for x in 1...10{ // for i int 0..<10{ }
    print(x)
}
var b:Int = 4
var c:Int = 9
for i in b...c{
    print(i)
}
// Mang

let Arr1 : [Int] = [1,2,3]
let Arr2 : [String] = []
let Arr3 : [String] = ["An" , "Binh"]
//Kieu duoi nhanh hon
let Arr : Array<Int> = Array<Int>()
let Arr4:Array<String> = Array<String>()
let Arr6:Array<Int> = Array<Int>()
let Arr7:Array<Int> = [1,2,3,4]
let Arr5:Array<Int> = [1,2,3,4,5]
Arr1.count
Arr1[0]
Arr3[1]
var Arr10:Array<Int> = [2,6,5,3,9]
Arr10.count
Arr10.append(10)
Arr10.count



