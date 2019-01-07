//: Playground - noun: a place where people can play
//Nguyen Duc Hoang - sunlight4d@gmail.com
//https://www.youtube.com/c/NguyenDucHoang

import UIKit

let isHero:Bool = true
let check = !isHero

let (width, height) = (800, 600)

let x = "hello " + "world" + "!"
let y = 3 % 2

(3, "cat") == (3, "cat")

let isHD = (width, height) > (1280, 720) ? "is HD" : "not HD"
let age:Int? = nil
let myAge = age ?? 18

for index in 1..<5 {
    print("index = \(index)")
}

if (5 < 1 || 3 < 2) {
    print("true !")
} else {
    print("false")
}

let range = ...7
range.contains(6)

let animals = ["cat", "dog", "tiger", "dinosaur"]

for animal in animals[...2] {
    print("animal = \(animal)")
}


