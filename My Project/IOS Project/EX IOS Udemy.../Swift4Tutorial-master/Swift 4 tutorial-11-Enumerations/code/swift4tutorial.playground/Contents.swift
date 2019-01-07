//Enumerations in Swift 4
//Nguyen Duc Hoang - sunlight4d@gmail.com
//https://www.youtube.com/c/NguyenDucHoang

import UIKit

enum Level {
//    case low
//    case medium
//    case high
    case low,medium, high
}

//var myLevel = Level.high //ok
var myLevel:Level = .high
switch myLevel {
case .high:
    print("It is high level")
case .medium:
    print("It is medium level")
case .low:
    print("It is low level")
default:
    print("Not a level")
}

enum AppleDevice {
    case appleWatch(String, UIColor)
    case iphone(Float, UIColor)
}
//var myDevice: AppleDevice = .appleWatch("sport 38mm", UIColor.green)
var myDevice = AppleDevice.iphone(10.3, UIColor.gray)
switch myDevice {
case let .appleWatch(name, color):
    print("my device is Apple Watch with name = \(name), color: \(color)")
case let .iphone(iosVersion, color):
    print("my device is Iphone with ios version = \(iosVersion), color: \(color)")
default:
    print("Not apple watch or iphone !")
}
enum AnimalIcons: Character {
    case ant = "🐜"
    case optopus = "🦑"
    case pig = "🐖"
}
print("optopus icon is : \(AnimalIcons.optopus.rawValue)")
enum Direction:Int {
    case up = 1
    case down = 2
    case left = 3
    case right = 4
}

print("Raw value of Left is : \(Direction.left.rawValue)")








