//Classses and structures in Swift 4
//Nguyen Duc Hoang - sunlight4d@gmail.com
//https://www.youtube.com/c/NguyenDucHoang

import UIKit

struct Shape {
    var width:Float = 0.0
    var height = 0.0
}
//var aShape = Shape()
var aShape = Shape(width: 120.0, height: 130.0)
//aShape.width = 102
var shape2 = aShape
print("shape's width = \(aShape.width)")
//print("shape's height = \(aShape.height)")
shape2.width = 1000
print("shape2's width = \(shape2.width)")

class User {
    var name = ""
    var universityName:String?
    var myBookShape = Shape(width:297,height: 210)
}
var user1 = User()
var user2 = user1
var user3 = User()

if (user2 === user1) {
    print("user2 is identical to user1")
}
if (user3 === user1) {
    print("user3 is identical to user1")
} else {
    print("user3 is in different memory location with user1")
}
print("myBook height = \(user1.myBookShape.height)")
print("myBook width = \(user1.myBookShape.width)")


