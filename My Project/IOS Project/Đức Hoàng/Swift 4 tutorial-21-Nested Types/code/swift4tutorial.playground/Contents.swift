//Nested Types in Swift 4
//Nguyen Duc Hoang - sunlight4d@gmail.com
//https://www.youtube.com/c/NguyenDucHoang

import UIKit
//Types can be nested to as many levels as are required.
struct Fruit {
    enum RedFruit:Character {
        case apple = "🍎", strawberry = "🍓", watermelon = "🍉", chiliPepper = "🌶"
        enum Size: Int {
            case small = 1, medium, big
        }
    }
    var myFruit: RedFruit?
    var myFruitSize: RedFruit.Size?
    var description:String {
        return "myFruit = \(myFruit?.rawValue), size = \(myFruitSize?.rawValue)"
    }
}

print(Fruit.RedFruit.strawberry.rawValue)
print(Fruit.RedFruit.Size.big.rawValue)

var fruit = Fruit()
fruit.myFruit = Fruit.RedFruit.chiliPepper
fruit.myFruitSize = Fruit.RedFruit.Size.small
//print("fruit detail = \(fruit)")
print(fruit.description)

