//Properties in Swift 4
//Nguyen Duc Hoang - sunlight4d@gmail.com
//https://www.youtube.com/c/NguyenDucHoang

import UIKit

struct Patient {
    var name: String
    let yearOfBirth: Int
}
var aPatient = Patient(name: "Alex",yearOfBirth: 1992)
aPatient.name = "Anderson"
//aPatient.yearOfBirth = 1993
class MovieManager {
    lazy var getOneMovieName:String = {
        print("do hard work...")
        return "Star War"
    }()
}
let manager = MovieManager()
print("get 1 movie : \(manager.getOneMovieName)")
manager

struct Calculation {
    var x: Double
    var squaredX: Double {
        get {
            return x * x
        }
        set {
            print("new value = \(newValue)")
            x = sqrt(newValue)
        }
    }
    var cubeX:Double {
        return x * x * x
    }
    var step:Int = 0 {
        willSet(newStep) {
            print("1. Before set value : \(newStep)")
        }
        didSet {
            print("2. After set value: \(step), old value: \(oldValue)")
        }
    }
}
var calculation = Calculation(x: 10, step: 1)
print("squared = \(calculation.squaredX)")
calculation.squaredX = 256.0
print("x now = \(calculation.x)")
calculation.cubeX
//calculation.cubeX = 1000
calculation.step = 123
class Computation {
    static var title = "This is Calculation class"
    static let pi: Float = 3.1416
    class var squaredPi: Float {
        return pi * pi
    }
}
print("title = \(Computation.title)")
Computation.pi
Computation.squaredPi














