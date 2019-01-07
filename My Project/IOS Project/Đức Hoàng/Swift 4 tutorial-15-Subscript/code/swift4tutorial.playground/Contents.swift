//Subscript in Swift 4
//Nguyen Duc Hoang - sunlight4d@gmail.com
//https://www.youtube.com/c/NguyenDucHoang

import UIKit

struct MultiplicationTable {
    let multiplier: Int
    subscript(index: Int) -> Int {
        return multiplier * index
    }
}

let mt = MultiplicationTable(multiplier: 4)
/*
for i in 1...10 {
    print("\(i) multiplies by 4 is : \(mt[i])")
}
 */

//mt[2] = 100
struct AnimalMatrix {
    var animals = [
        ["🐜", "🐙", "🐊", "🐎", "🐖"],
        ["🐢", "🐍", "🦋", "🦀", "🐿"],
        ["🐌", "🐚", "🐳", "🐒"]
    ];
    subscript(row: Int, column: Int) -> String {
        get {
            assert(animals[row][column] != nil, "No animal found")
            return animals[row][column]
        }
        set {
            assert(animals[row][column] != nil, "Cannot set animal value because it is out of range")
            animals[row][column] = newValue
        }
    }
}

var am = AnimalMatrix()
print(am[2, 3])
am[0, 0] = "xyz"
print("am = \(am)")




