//Closures in Swift 4
//Nguyen Duc Hoang - sunlight4d@gmail.com
//https://www.youtube.com/c/NguyenDucHoang

import UIKit

var starWarCharacters = ["Leia Organa","Anakin Skywalker", "Luke Skywalker", "Ray", "R2-D2", "Qui-won"]

func handleSort(s1: String, s2: String) -> Bool {
    return s1 < s2
}

var sortedStarWarCharacters = starWarCharacters.sorted(by: handleSort)
print("sortedStarWarCharacters = \(sortedStarWarCharacters)")

let someNumbers = [1,2,3,4,5,6]
/*
var squaredNumbers = someNumbers.map { (someNumber) -> Int in
    return someNumber * someNumber
}
print("squaredNumbers = \(squaredNumbers)")
 */
var strings = someNumbers.map { (someNumber) -> String in
    return "\(someNumber) points"
}
print("strings = \(strings)")
/*
func doTask1(completionHandler:  @escaping(_ responseString: String,_ errorCode: Int) -> Void) {
    print("do task 1")
    completionHandler("success", 200)
}

doTask1 { (responseStr, errCode) in
    print("This task do after task1. ResponseString = \(responseStr), errorCode = \(errCode)")
}

let doAHardWork = {
    print("This is a hard work")
}
let anotherHardWork = doAHardWork
print("Do task A")
anotherHardWork()
*/
func doSomeWork(hardWork: @autoclosure() -> Void) {
    print("before autoclosure")
    hardWork()
}
doSomeWork(hardWork: print("I do hard work. I am inside autoclosure"))
