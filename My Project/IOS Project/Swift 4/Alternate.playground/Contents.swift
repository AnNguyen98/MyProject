//: Playground - noun: a place where people can play

import UIKit

let arr1 = ["a","b","c","d","e"]
let arr2 = ["bo","ro","me","lo","fa","se"]

func alternate(first: [String], second: [String]) -> [String] {
    
    
    if first.count == 0 {
        return second
    } else if second.count == 0 {
        return first
    }
    
    var mixed = [String]()
    var maxCount = 0
    
    if first.count >= second.count {
        maxCount = first.count
    } else if second.count > first.count {
        maxCount = second.count
    }
    
    for x in 0..<maxCount {
        
        if first.count > x {
            mixed.append(first[x])
        }
        
        if second.count > x {
            mixed.append(second[x])
        }
        
    }
    
    return mixed
}

print(alternate(first: arr1, second: arr2))


