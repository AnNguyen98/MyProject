//Extensions in Swift 4
//Nguyen Duc Hoang - sunlight4d@gmail.com
//https://www.youtube.com/c/NguyenDucHoang

import UIKit
//Extensions in swift = Objective-C categories + do not have names
//Extensions in swift = Add more methods or computed properties without inheritance
//Extend a Computed Properties
extension Double {
    var meter: Double {
        return self
    }
    var kilometer: Double {
        return self * 1000.0
    }
    var centimeter: Double {
        return self / 100.0
    }
    var milimeter: Double {
        return self / 1000.0
    }
}
let aDistance = 42.0.kilometer + 192.0.meter + 12345.0.centimeter + 256897.3.milimeter
print("aDistance = \(aDistance.meter) meters")
//Extend Initializers
struct Point {
    var x: Double
    var y: Double
}
extension Point {
    init(xValue: Double, yValue: Double) {
        self.x = xValue
        self.y = yValue
    }
}
let myPoint = Point(xValue: 21.2, yValue: 22.2)
print("myPoint = \(myPoint)")
//Extend a static method
extension UIColor {
    static func rgba(_ red: CGFloat, _ green: CGFloat, _ blue: CGFloat, _ alpha: CGFloat) -> UIColor {
        return UIColor(red: red / 255.0, green: green / 255.0, blue: blue / 255.0, alpha: alpha)
    }
}
//let myColor = UIColor.rgba(red: 250, green: 128, blue: 144, alpha: 1)
let myColor = UIColor.rgba(250, 128, 144, 1)
print("myColor = \(myColor)")
struct Rectangle {
    var width, height: Double
}
//Extend an instance method
extension Rectangle {
    func calculateArea() -> Double {
        return self.width * self.height
    }
}
let rectangle = Rectangle(width: 100.0, height: 200.0)
print("calculateArea = \(rectangle.calculateArea())")
//Extend mutating Instance Methods
extension Double {
    mutating func square(){
        self = self * self //mutating method = method that change "self"
    }
}
var someDouble = 123.6
someDouble.square()









