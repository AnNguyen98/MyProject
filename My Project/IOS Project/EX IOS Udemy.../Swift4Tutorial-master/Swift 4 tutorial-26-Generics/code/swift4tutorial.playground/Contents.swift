//Generics in Swift 4
//Nguyen Duc Hoang - sunlight4d@gmail.com
//https://www.youtube.com/c/NguyenDucHoang

import UIKit
//Swift’s Array and Dictionary types are both generic collections
//Swap 2 integers
/*
func swap2Ints(_ a: inout Int, _ b: inout Int) {
    let temp = a
    a = b
    b = temp
}
var x = 33
var y = 44
swap2Ints(&x, &y)
print("x is now \(x), and y is now \(y)")
 */
//T = placeholder type name
func swap2Values<T>(_ a: inout T, _ b: inout T) {
    let temp = a
    a = b
    b = temp
}
var string1 = "str1"
var string2 = "str2"
swap2Values(&string1, &string2)
print("string1 is now \(string1), and string2 is now \(string2)")
//Define Stack struct with type "Element" or "T"
struct Stack<T> {
    var items = [T]()
    //mutating => because they need to modify/mutate the structure’s items array
    mutating func push(_ item: T) {
        items.append(item)
    }
    mutating func pop() -> T? {
        return items.count == 0 ? nil : items.removeLast()
    }
}
var integerStack = Stack<Int>()
integerStack.push(1)
integerStack.push(2)
integerStack.push(3)
integerStack.push(4)
print("integerStack = \(integerStack)")
integerStack.pop()
print("integerStack = \(integerStack)")
//Type Constraint => type parameter’s name + type parameter list
//Equatable => it is guaranteed to support the equal to operator
func findIndex<T: Equatable>(of valueToFind: T, in array:[T]) -> Int? {
    for (index, value) in array.enumerated() {
        if value == valueToFind {
            return index
        }
    }
    return nil
}
let intIndex = findIndex(of: 11, in: [10, 11, 12])
let stringIndex = findIndex(of: "Hoang", in: ["Alex", "Peter", "Mary"])
//Associated Types
protocol Container {
    associatedtype T
    mutating func append(_ item: T)
    var count: Int { get }
}

struct IntStack: Container {
    // original IntStack implementation
    var items = [Int]()
    mutating func push(_ item: Int) {
        items.append(item)
    }
    mutating func pop() -> Int {
        return items.removeLast()
    }
    // conformance to the Container protocol
    typealias T = Int
    mutating func append(_ item: T) {
        self.push(item)
    }
    var count: Int {
        return items.count
    }
    
}










