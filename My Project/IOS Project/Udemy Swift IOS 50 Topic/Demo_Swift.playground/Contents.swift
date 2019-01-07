import UIKit

/*
let pi = 3.1416
var x = 102.43

var name = "AN" , age = 20 , email = "theannguyen98@gmail.com"
print("name \(name) , age \(age) , email \(email)")
var a , y ,z : Double
let 😀 = "smeil"
let oneBillion = 1_000_000_000
print("oneBillion = \(oneBillion)")

let aNumber:UInt64 = 100
let another:UInt8 = 10
let result1 = aNumber + UInt64(another)
print("result1 = \(result1)")

typealias BigNumber = Double
let numberOfAlias:BigNumber = 1_000_000
print("numberOfAlias = \(numberOfAlias)")

var ageNumber = -10
precondition(ageNumber >= 0,"Errol")
var x1 = 1000
*/
/*
let isHero:Bool = true
let check = !isHero

let (width , height) = (800, 600)

let x = "Hello" + " World" + " !"
let y = 3%2

2 != 1
2 > 1
(1, "cat") > (0, "dog")

let isHD = (width , height) > (1280 , 720) ? "IS HD" : "NOT HD"

for index in 1...5{
    print(index)
}
for index in 1..<5{
    print(index)
}
var age:Int? = nil
let myAge = age ?? 18
if (3>5 && 6>7){
    print("")
}
if(2>6 || 7>6){
    print("")
}
let range = ...7
range.contains(4)
range.contains(9)

let animals = ["cat" , "dog" , "tiger" , "dinosaur"]
for animal in animals[0...]{
    print("animal = \(animal)")
}
print(animals)
for animal in animals[...2]{
    print("animal = \(animal)")
}
*/

/*
let welcome = "Hello"
let hi = """
    Hello man , let's learn IOS !!
    "Ahii"
    \"\"\"
"""
print(hi)
print(welcome)
let aBlank1 = ""
let aBlank2:String = String()
let aBlank3 = String()
print(aBlank1)

aBlank1.isEmpty
if aBlank1.isEmpty{
    print("It is Empty")
}
var aMutableString = "This is a man"
aMutableString += "-This is a woman."
print(aMutableString)
for character in aMutableString{
    print(character)
}
let dollarMark:Character = "$"
aMutableString.append(dollarMark)
print(aMutableString)

let width = 10
let aquareArea = "The square area is = \(width * width)"
print(aquareArea)
let ampersandMark = "\u{2602}"
print(ampersandMark)
*/
//var welcomeString = "Hello world!"
//print(welcomeString.startIndex)
//print(welcomeString[welcomeString.startIndex])
//print(welcomeString.index(before: welcomeString.endIndex))
//print(welcomeString[welcomeString.index(before: welcomeString.endIndex)])
//print(welcomeString[welcomeString.index(after: welcomeString.startIndex)])

//for index in welcomeString.indices{
// //   print(index) // kieu index ko phai kieu Integer
//    print(welcomeString[index])
//}
/*
print(welcomeString)
print(welcomeString[welcomeString.index(welcomeString.startIndex, offsetBy:4)])
//welcomeString.insert(contentsOf: " Man", at: welcomeString.endIndex)
welcomeString.insert("A", at: welcomeString.startIndex) 
print(welcomeString)

let someString = "I am a Jedi"
let indexFrom = someString.startIndex
let indexTo = someString.index(someString.startIndex, offsetBy:5)
let subString1 = someString[indexFrom...indexTo]
let subString2 = String(subString1)
let myLove1 = "I love you"
let myLove2 = "I love you"

if myLove1 == myLove2 {
    print("true")
}

let stringWithPrefix = "mr An will going to school with myfrends."
stringWithPrefix.hasPrefix("mr An")

let stringWithPostfix = "mr Hoang likes Star War!"
stringWithPostfix.hasSuffix("War!")
stringWithPostfix.uppercased().hasSuffix("WAR!")
stringWithPostfix.lowercased()
*/

// Array

/*
let mang1:[String] = []
let mang2:[Int] = [1,2,3,4,5]

let mang3:Array<Int> = Array<Int>()
let mang4:Array<String> = Array<String>()

var names:Array<String> = ["An","Nguyen"]
names.append("Loc")
names.count

var ints:Array<Int> = Array<Int>()
ints.append(2)
ints.append(9)
ints.count

*/


// ? & !

/*
var a:Int!
var b:Int?
b = 9
print(a)
print(b!)

struct people{
    var name:String?
    var cmnd:String!
}
 */


//

//print(12)
////tuple
//let (width , height) = (4,5)
//(3,"cat") == (4,"dog")
//let isHD = (width , height) > (1280 , 720) ? "is HD":"not HD"
//let age:Int? = nil
//let myage = age ?? 19
//
//let rang = ...7
//rang.contains(9)
//rang.contains(6)

//let arrays = ["apple" , "banana" , "sunflower"]
//print(arrays)
//for index in arrays[...]{
//    print(index)
//}
//for index in arrays[...1]{
//    print(index)
//}
//
//var Hello = "Hello"
//
//Hello.append(" An")
//for index in Hello{
//    print(index)
//}

//print("♡")
//let hello = "Hello world!"
////print(hello[hello.startIndex])
//print(hello[hello.index(before: hello.endIndex)])
//for eachCharacter in hello{
//    print(eachCharacter)
//}
//print(hello[hello.index(after: hello.startIndex)])

//(3,"cat")>(4,"og")
//var arrayTinh:Array<Array<String>> = [["Ha Noi" , "Ha Nam" , "Quang Ninh"] , ["Ha Tinh" , "Da Nang" , "Hue"] , ["TP.Ho CHi Minh" , "Ca Mau" , "Nha Trang" , "Ba Ria Vung Tau"]]
//
//arrayTinh.count


//Kiểm tra phiên bản (Availability Checking)
//if NSClassFromString("NSURLQueryItem") != nil {
//    // iOS 8 or up
//} else{
//    // Earlier iOS versions
//}
//
//if #available(iOS 8, *) {
//    // iOS 8 or up
//    let queryItem = NSURLQueryItem()
//
//} else {
//    // Earlier iOS versions
//
//}
//
//var i = 0
//repeat {
//    i +=  1
//    print(i)
//} while i < 10


// Bai 1

//var array = [10, 2, 4, 5, 7, 8, 8, 9, 10, 3]
//
//for i in array{
//    for j in array{
//        if i == j {
//
//        }
//    }
//}
//
//array.sort()




//enum CarEngineErrors:Error{
//    case NoFuel
//    case OilLeak
//    case LowBattery
//}
//
//let fuelReserve = 20.0
//let oilOk = true
//let batteryReserve = 0.0
//
//func checkEngine() throws{
//    guard fuelReserve > 0.0 else {
//        throw CarEngineErrors.NoFuel
//    }
//
//    guard oilOk else{
//        throw CarEngineErrors.OilLeak
//    }
//
//    guard batteryReserve > 0.0 else{
//        throw CarEngineErrors.LowBattery
//    }
//}
//
//func startEngine(){
//    do{
//        try checkEngine()
//        //print("Engine started" , appendNewLine:true)
//    }catch CarEngineErrors.NoFuel{
//        print("No Fuel")
//    }catch CarEngineErrors.LowBattery{
//        print("Low Battery")
//    }catch CarEngineErrors.OilLeak{
//        print("Oil Leak")
//    }catch {
//        //Default
//        print("Unknown reason!")
//    }
//
//}
//
////Protocol Extensions
//
//protocol Awesome {
//    func awesomenessPercentage() -> Float
//}
//class Dog: Awesome {
//    var age: Int!
//    func awesomenessPercentage() -> Float {
//        return 0.85
//    }
//}
//
//class Cat: Awesome {
//    var age: Int!
//    func awesomenessPercentage() -> Float {
//        return 0.45
//    }
//}
//
//let dog = Dog()
//dog.awesomenessPercentage()
//
//let cat = Cat()
//cat.awesomenessPercentage()
//
//extension Awesome {
//    var awesomenessIndex: Int {
//        get {
//            return Int(awesomenessPercentage() * 100)
//        }
//    }



//let pi = 3.1416
//var x = 102.3
//var name = "An",age  = 19 , email = "theannguyen98@gmai.com"
//print("name \(name) , age \(age) , email \(email)")
//
//var a,b,c :Double
//let oneBillion = 1000_000_000
//print("one Billion = \(oneBillion)")
//
//let aNumber:UInt64 = 100
//let anotherNumber:UInt8 = 10
//let result1 = aNumber + UInt64(anotherNumber)
//print("result1 = \(result1)")
//
//typealias Bignumber = Double
//let numberOfAnts:Bignumber = 1_000_000
//print("numberOfAnts = \(numberOfAnts)")
//
//var ageNumber = 10;
////assert(ageNumber > 0, "ageNumber > 0")
//precondition(ageNumber > 0, "ageNumber > 0")



//let isHero:Bool = true
//let check = !isHero
//
//let (width , height) = (800 , 600)
//let x = "hello" + "world!"
//let y = 3%2
//
//2>1
//
//(3,"cat") == (3 , "dog")
//
//let isHD = (width,height) > (1280 , 720) ? "is HD":"not is HD"
//let age:Int?
//age = 19
//print(age!)
//
//let myAge = age ?? 20
//for index in 1...5{
//    print(index)
//}
//let range = ...7
//range.contains(9)
//range.contains(6)
//let animal = ["tiger" , "elephan" , "dog" , "cat"]
//for animal in animal[...2]{
//    print(animal)
//}




//var array:Array<Array<String>> = [["1","2","5"],["3","4"]]
//
////array.count
//array[0].underestimatedCount
//
//array[1][1]
//
//
////for i in 0..<array.count{
////    for j in 0..<array[i].underestimatedCount{
////        print(array[i][j])
////    }
////}
//
//for j in 0..<array.count{
//    print(array[j].underestimatedCount)
//}

//var array:Array<Array<String>> = Array<Array<String>>()
//
//array.append(["a" , "b"])
//array.count
//
//var c:Array<Array<Array<String>>> = [[["",""]],[[""]]]
//c.count

//
//let wellcome = "Hello World!!"
//print(wellcome)
//
//let x = """
//My name is An!
//I can do it!!!!
//"""
//let aBlankString:String = String()
//print(aBlankString)
//
//if aBlankString.isEmpty {
//    print("aBlankString is Empty")
//}
//var aMutableString = "This is a man."
//aMutableString += " -This is woman."

//for eachCharacter in aMutableString{
//    print(eachCharacter)
//}
//
//let dollarMark:Character = "$"
//aMutableString.append(dollarMark)
//print(aMutableString)
//let width = 500
//let squareArea = "The square Area is \(width * width)"

//let hi = "Hello World!"
//hi.count
//
//for index in hi.indices{
//    print(hi[index])
//}
//
//hi[hi.index(hi.startIndex, offsetBy: 4)]
//hi[hi.index(before: hi.endIndex)]


//var array:Array<String> = Array<String>();
//var mang1:Array<String> = [];
//var mang2:[String] = [];
//var mang3:Array<Array<String>> = [[],[],[]];
//mang3.underestimatedCount
//mang3.count
//mang3.append(["IOS"])
//mang3[1] = ["Android"]
//mang3[1]
//mang3.remove(at: 1)
//mang3
//
//var dic:[String:Int] = ["Two":2]
//dic.count
//dic["Two"]
//dic["one"] = 1
//dic
//dic["three"] = 3
//
//dic[dic.startIndex]
//dic[dic.index(after: dic.startIndex)]

//var dic:[String:Int] = [:]
//var dic2:[Int:Int] = [Int:Int]()
//var dic3:Dictionary<Int, Any> = [:]
//var dic4:Dictionary<Int , String> = Dictionary<Int , String>()

//struct person{
//    let givenName:String
//    let familyName:String
//    let middleName:String?
//}
//
//var y:Int? = nil
//
//y = 5
//
//if let x = y {
//    print(x)
//}
//var displayName:String{
//    if let middleName = middleName!{
//        return givenName + " " + middleName! + " " + familyName
//    }
//    return givenName + " " + familyName
//}


//Data Structure


//func welcome(){
//    print("welcome to my application")
//}
//
//func hello(name:String , from:String){
//    print("Hello \(name)!,I am from \(from)")
//}
//
//func sum(a:Int,b:Int)->Int{
//    return a + b
//}

//struct Product{
//    var name:String //property || stored property
//    var price:Float
//    var isSold:Bool
//
//    //method
//    func intro()->String{
//        return "Name: \(self.name),price \(price), is sold \(isSold)"
//    }
//
//}
//
//// istance , object , concrete value
//
//var iPhone7 = Product(name: "iPhone 7", price: 20.5, isSold: false)
//iPhone7.name
//iPhone7.price
//iPhone7.isSold
//
//iPhone7.isSold = true
//
//if iPhone7.isSold {
//    print("\(iPhone7.name) is sold")
//}
//
//print(iPhone7.intro())
//
//let iPod = Product(name: "iPod Touch Gen 5", price: 10.5, isSold: true)
//print(iPod.intro())
//
//struct Order{
//    var product:Product
//    var date:String
//}

//struct Rectangle{
//    var width:Int
//    var height:Int
//    //computed property , read only
//    var dienTich:Int{
//        return width * height
//    }
//
//    func tinhChuVi()->Int{
//        return (width + height)*2
//    }
//    func tinhDienTich()->Int{
//        return width * height
//    }
//}
//
//let rec1 = Rectangle(width: 3, height: 10)
//rec1.tinhChuVi()
//rec1.tinhDienTich()
//rec1.dienTich
//
//var rec2 = rec1
//rec2.dienTich

//struct Person{
//    var name:String
//    var age:Int
//
//    init (Name:String,Age:Int){
//        self.name = Name
//        self.age = Age
//        //print("Creat a new person")
//    }
//
//    init(Name:String){
//        self.name = Name
//        self.age = 1
//    }
//}
//var mySelf = Person(Name: "An", Age: 19)
//var otherPerson = Person(Name: "Lan")
//otherPerson.name
//otherPerson.age

//
//var array1:[Int] = []
//var array2 = [Int]()
//var array3:Array<Int> = Array<Int>()
//var array4 = Array(repeating: 0, count: 5)
//
//let first:[(String,Int)]? = []
//var array5:[(String,Int)] = []
//array5.append(("An",19))
//var a = ("I",2)
//array5.contains(where: <#T##((String, Int)) throws -> Bool#>)








