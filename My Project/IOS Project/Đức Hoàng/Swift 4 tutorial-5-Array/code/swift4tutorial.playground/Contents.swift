//: Playground - noun: a place where people can play
//Nguyen Duc Hoang - sunlight4d@gmail.com
//https://www.youtube.com/c/NguyenDucHoang

import UIKit

var someDoubles = [Double]()
someDoubles.append(100.02)
someDoubles.append(3.2)
print("number of elements = \(someDoubles.count)")

var tenIntegers = Array(repeating: 5, count: 10)
var twoIntegers = Array(repeating: 9, count: 2)
print(tenIntegers)
print(twoIntegers)

var result1 = tenIntegers + twoIntegers
print(result1)

var smartPhones = ["iphone", "samsum galaxy", "htc one"]
smartPhones += ["nokia", "blackberry"]
print(smartPhones)
//smartPhones.remove(at: 1)
//print(smartPhones)

for smartPhone in smartPhones {
    print("each smartphone = \(smartPhone)")
}

for (index, value) in smartPhones.enumerated() {
    print("index = \(index), value = \(value)")
}


