//: Playground - noun: a place where people can play
//Nguyen Duc Hoang - sunlight4d@gmail.com
//https://www.youtube.com/c/NguyenDucHoang

import UIKit
let welcome = """


  This is my tutorial channel.
"How long have you done this ?". "4 months"
This is a 3 quotes \"\"\"


"""

let aBlankString = String()
print(aBlankString)
if (aBlankString.isEmpty == true) {
    print("It is empty")
}
var aMutableString = "🦑This is a man."
aMutableString += "This is a woman"

/*
for eachCharacter in aMutableString {
    print("character:           \(eachCharacter)")
}
 */
let dollarMark: Character = "$"
aMutableString.append(dollarMark)
print(aMutableString)

let width = 500
let squareArea = "The square area is \(width * width)"
print(squareArea)

let ampersandMark = "\u{2602}"
print(ampersandMark)

var welcomeString = "Hello World!"
print(welcomeString[welcomeString.index(welcomeString.startIndex, offsetBy: 4)])
/*
for index in welcomeString.indices {
    print("eachCharacter = \(welcomeString[index])")
}
*/
//welcomeString.insert("A", at: welcomeString.endIndex)
welcomeString.insert(contentsOf: "AAAA", at: welcomeString.index(before: welcomeString.endIndex))
print(welcomeString)

let someString = "I am a Jedi"
let indexFrom = someString.startIndex
let indexTo = someString.index(someString.startIndex, offsetBy: 5)
let subString1 = someString[indexFrom...indexTo]
let subString2 = String(subString1)

let myLove1 = "I love you"
let myLove2 = "I love you"

if myLove1 == myLove2 {
    print("Content are equal")
}

let stringWithPrefix = "mr Hoang makes this video"
stringWithPrefix.hasPrefix("mr Hoang1")

let stringWithPostfix = "mr Hoang likes StAr War"
stringWithPostfix.hasSuffix("Star War")
stringWithPostfix.uppercased().hasSuffix("STAR WAR")










