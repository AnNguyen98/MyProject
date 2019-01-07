//Protocols in Swift 4
//Nguyen Duc Hoang - sunlight4d@gmail.com
//https://www.youtube.com/c/NguyenDucHoang

import UIKit
protocol DetailInformationProtocol {
    //    Property Requirements
    var fullName: String { get }
    //Method Requirements
    func showDetail() -> String
}
//Example of a class "conforms a protocol"
class User: DetailInformationProtocol {
    var firstName: String
    var lastName: String
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    //must implement property in Protocol
    var fullName: String {
        return firstName + lastName
    }
    func showDetail() -> String {
        return "Firstname = \(firstName), lastName = \(lastName)"
    }
}
var mrHoang = User(firstName: "Nguyen", lastName: "Duc Hoang")
//Example of "Mutating Method Requirements"
protocol TogglableProtocol {
    //Mutating Method Requirements
    mutating func toggle()
}
enum Switcher: TogglableProtocol {
    case on, off
    mutating func toggle() {
        switch self {
        case .off:
            self = .on
        case .on:
            self = .off
        }
    }
}
var lightSwitch = Switcher.off
lightSwitch.toggle()
lightSwitch.toggle()
//Initializer Requirements
protocol InitializationProtocol {
    init(name: String)
}
class Animal {
    
}
//class Bird inherited from Animal and conforms protocol InitializationProtocol
class Bird: Animal,InitializationProtocol {
    var name: String
    required init(name: String) {
        self.name = name
    }
}
let aBird = Bird(name: "Kiki")














