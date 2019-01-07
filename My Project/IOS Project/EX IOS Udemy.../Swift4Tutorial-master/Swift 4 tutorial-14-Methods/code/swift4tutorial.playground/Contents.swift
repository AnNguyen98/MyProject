//Methods in Swift 4
//Nguyen Duc Hoang - sunlight4d@gmail.com
//https://www.youtube.com/c/NguyenDucHoang

import UIKit

class Point {
    var x:CGFloat = 0.0
    var y:CGFloat = 0.0
    var color: UIColor = UIColor.green
    
    func moveTo(x: CGFloat, y: CGFloat, color: UIColor) {
        self.x = x
        self.y = y
        self.color = color
    }
    
    func toString() -> String {
        return "x = \(self.x), y = \(self.y), color = \(self.color.description)"
    }
    
    func moveAndCreateNewPoint(x: CGFloat, y: CGFloat, color: UIColor) -> Point {
        let newPoint = Point()
        newPoint.moveTo(x: x, y: y, color: color)
        return newPoint
    }
}

var myPoint = Point()
myPoint.moveTo(x: 10, y: 20, color: UIColor.red)
print(myPoint.toString())
var newPoint = myPoint.moveAndCreateNewPoint(x: 200, y: 300, color: UIColor.yellow)
if myPoint !== newPoint {
    print("myPoint and newPoint are different")
}
enum Compass {
    case east, west, south, north
    mutating func moveToNext() {
        switch self {
        case .east:
            self = .west
        case .west:
            self = .south
        case .south:
            self = .north
        case .north:
            self = .east
        }
    }
}

var compass1 = Compass.east
compass1.moveToNext()
print(compass1)
compass1.moveToNext()
print(compass1)

class Calculator {
    static let pi:Float = 3.1416
    static func sum2Numbers(a: Int, b: Int) -> Int {
        return a + b
    }
    class func circleArea(radius: Float) -> Float {
        return pi * radius * radius
    }
}
print("sum 5 + 2 = \(Calculator.sum2Numbers(a: 5, b: 2))")
print("circle area = \(Calculator.circleArea(radius: 20))")













