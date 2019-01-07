//Inheritance in Swift 4
//Nguyen Duc Hoang - sunlight4d@gmail.com
//https://www.youtube.com/c/NguyenDucHoang

import UIKit

class Animal {
    var name: String = ""
    func eat() {
        print("Animal is eating...")
    }
    var description: String {
        return "This is an animal named: \(self.name)"
    }
}

class Cat: Animal {
    var canClimb: Bool = true
    func sayMeomeo() {
        print("I am saying meo meo")
    }
    
    override func eat() {
        super.eat()
        print("Cat is eating ...")
    }
    
    override var description: String {
        return "Cat's name is: \(super.description), can climb = \(self.canClimb)"
    }
}
let animal = Animal()
var myCat = Cat()
myCat.name = "Mina"
myCat.eat()
print(myCat.description)

//myCat.description = "This is meomeo"

