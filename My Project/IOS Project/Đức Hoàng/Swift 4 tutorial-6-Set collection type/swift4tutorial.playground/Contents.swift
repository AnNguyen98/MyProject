//: Playground - noun: a place where people can play
//Nguyen Duc Hoang - sunlight4d@gmail.com
//https://www.youtube.com/c/NguyenDucHoang

import UIKit

var starWarCharacters: Set<String> = ["Anakin Skywalker", "Luke", "Yoda"]

if(starWarCharacters.isEmpty){
    print("No characters")
} else {
    print("There are \(starWarCharacters.count) characters")
}
starWarCharacters.insert("Leia")
starWarCharacters.remove("Luke")
print(starWarCharacters)

if starWarCharacters.contains("Finn") {
    print("List contains Finn")
} else {
    print("List does not contain Finn")
}

for starWarCharacter in starWarCharacters {
    print("starWarCharacter = \(starWarCharacter)")
}
let set1: Set = [1, 2,  3, 4, 5,  6,  7]
let set2: Set = [9, 10, 3, 4, 11, 12, 13]

//let resultSet = set1.intersection(set2).sorted()
//let resultSet = set1.union(set2).sorted()
//let resultSet = set1.subtracting(set2).sorted()
let resultSet = set1.symmetricDifference(set2).sorted()
print("resultSet = \(resultSet)")


let fruits:Set = ["🍎","🥝","🍆","🍇","🍒"]
let fruitAndDrinks:Set = ["🍎","🥝","🍆","🍇","🍒", "🍺","☕️","🍷"]
let animals: Set = ["🐇","🐊","🐴","🐓"]
fruitAndDrinks.isSuperset(of: fruits)
fruits.isSubset(of: fruitAndDrinks)

fruits.isDisjoint(with: animals)













