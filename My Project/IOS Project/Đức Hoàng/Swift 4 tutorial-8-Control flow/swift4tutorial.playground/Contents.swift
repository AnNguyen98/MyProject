//: Playground - noun: a place where people can play
//Nguyen Duc Hoang - sunlight4d@gmail.com
//https://www.youtube.com/c/NguyenDucHoang

import UIKit

for index in 0..<10 {
//    print("index = \(index)")
//    print("hello !")
}
for index in stride(from: 1, to: 12, by: 0.01) {
//    print("index =\(index)")
}

var startValue = 0

while startValue < 100 {
    print("startValue = \(startValue)")
    startValue = startValue + 1
}
/*
 repeat {
 print("startValue = \(startValue)")
 startValue = startValue + 1
 } while startValue < 100
 */

/*
 var yourPoint = -2
 var estimation:String
 
 switch yourPoint {
 case 0..<2:
 estimation = "very bad"
 case 2..<5:
 estimation = "under average"
 case 5..<7:
 estimation = "average"
 case 7..<9:
 estimation = "Good"
 case 9...10:
 estimation = "Exellent"
 default:
 estimation = "Not a valid value"
 }
 
 print("estimation = \(estimation)")
 */
let starWarCharacter = "Nguyen Duc Hoang"
switch starWarCharacter {
case "Yoda", "Obiwan-Kenoby", "Mace Windu":
    print("\(starWarCharacter) is a Jedi")
case "Darth Sidious", "Anakin Skywalker", "Darth Maul":
    print("\(starWarCharacter) is in Dark Side of the Force")
case "Nguyen Duc Hoang":
    print("\(starWarCharacter) is a freelancer")
    fallthrough
default:
    print("\(starWarCharacter) is not a Star War's character")
}




















