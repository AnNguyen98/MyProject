//Advanced Operators in Swift 4
//Nguyen Duc Hoang - sunlight4d@gmail.com
//https://www.youtube.com/c/NguyenDucHoang

import UIKit
extension UInt8 {
    func printDetail(varName: String) {
        print("\(varName) details: Value = \(self), bit value = \(String(self, radix: 2))")
    }
}
let numberInBits: UInt8 = 0b11001111
let invertedNumberInBits = ~numberInBits
invertedNumberInBits.printDetail(varName: "invertedNumberInBits")
let firstBits: UInt8 =   0b11111001
let secondBits: UInt8  = 0b00111111
//XOR                      11000110
//OR                       11111111
//AND                      00111001
let firstAndSecondBits = firstBits & secondBits
firstAndSecondBits.printDetail(varName: "firstAndSecondBits")
//OR
let firstOrSecondBits = firstBits | secondBits
firstOrSecondBits.printDetail(varName: "firstOrSecondBits")
//exclusive OR operator = XOR
let firstXORSecondBits = firstBits ^ secondBits
firstXORSecondBits.printDetail(varName: "firstXORSecondBits")
let shiftBits: UInt8 = 0b00000100
//left shift             00001000
//left shift 2              10000
shiftBits.printDetail(varName: "shiftBits")
let shift1 = shiftBits << 1 //To left
shift1.printDetail(varName: "shift1")
let shift2 = shiftBits << 2
shift2.printDetail(varName: "shift2")
//Overflow Operators
var maxInt32 = Int32.max
print("maxInt32 = \(maxInt32)") // = 2^32 / 2 - 1
//maxInt32 = maxInt32 + 1
maxInt32 = maxInt32 &+ 3
print("maxInt32 = \(maxInt32)")
//Int32's range: -2147483648, -2147483647, -2147483646,... 2147483646, 2147483647
var minInt32 = Int32.min
print("minInt32 = \(minInt32)") // = 2^32 / 2 - 1
//minInt32 = minInt32 - 1 //error
minInt32 = minInt32 &- 2
print("minInt32 = \(minInt32)")
//Precedence and Associativity
var anExpression = 5 + ((7 % 8) * 5) //Precedence: "%, *, / operator" = first, "+, - operator" = second,
//remainder: 7 % 8 = 7
print("anExpression = \(anExpression)")
//Operator Methods
// "+ operator" is an infix operator. Ex: a + b
struct Vector3D {
    var x = 0.0, y = 0.0, z = 0.0
}
extension Vector3D {
    static func + (v1: Vector3D, v2: Vector3D) -> Vector3D {
        return Vector3D(x: v1.x + v2.x, y: v1.y + v2.y, z: v1.z + v2.z)
    }
    //unary operators. Example: +a, -b
    static prefix func - (vector: Vector3D) -> Vector3D {
        return Vector3D(x: -vector.x, y: -vector.y, z: -vector.z)
    }
    static func == (v1: Vector3D, v2: Vector3D) -> Bool {
        return (v1.x == v2.x) && (v1.y == v2.y) && (v1.z == v2.z)
    }
}
let vector1 = Vector3D(x: 1.0, y: 2.0, z: 3.0)
let vector2 = Vector3D(x: 4.0, y: 5.0, z: 6.0)
var sum = vector1 + vector2
print("sum = \(sum)")
//unary operators. Example: +a, -b
print("vector1 = \(vector1)")
var vector3 = -vector1
print("vector3 = \(vector3)")

var vectorA = Vector3D(x: 1.0, y: 2.0, z: 3.0)
var vectorB = Vector3D(x: 1.0, y: 2.0, z: 3.0)
if vectorA == vectorB {
    print("2 vectors are equivalent")
}



