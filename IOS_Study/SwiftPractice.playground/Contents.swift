//import UIKit
//
//let str:String = "Hello world"
//print(str)
//var pi:Double = 3.1415
//pi = Double.pi
//
//var 😲 = "Hii"
//
//print("\(str)")
//
//var tuple1 = (2,"An")
//var tuple2 = (a:"One", b:"Hello")
//var tuple3 = (1,2,3,4,5,6,7)
//print("\(tuple1.0) - \(tuple2.a)")
//
//func getCountry() -> (String, Int, String){
//    return ("An", 20, "Tierd")
//}
//
//getCountry()
//
//let person1 = (name:"An", adress:"Ha Tinh", age:20)
//
//print("\(person1.name) lives at \(person1.adress) and is \(person1.age) years old")
//
//var a:Int? = 4
////a = nil
//if a != nil {
//    print("\(a!) not nil")
//}
//var c:Int? = nil
//if let _ = a, let _ = c {
//    print("OKKK")
//}
//
//func doubleValue(value:Double?) -> Int? {
//    if let i = value {
//        return Int(i) * 2
//    }else{
//        return nil
//    }
//}
//
//func doubleValue1(value:Int?) -> Int? {
//    guard let i = value else { return nil}
//    return i * 2
//}
//
//doubleValue(value: nil)
//doubleValue1(value: nil)
//
//var character:Character = "😃"
//
//print(UnicodeScalar(65) ?? 4)
//
//var i:Int? = nil
//
//let l = i ?? 10
//
//var strVl = "Hello"
//
//for i in strVl {
//    print(i)
//}
//
//strVl.index(strVl.startIndex, offsetBy: 4)
//
//enum DayOfWeeks{
//    case Monday, Tuesday, Wenesday, Thuesday, Friday, Saturday, Sunday
//}
//var day:DayOfWeeks = DayOfWeeks.Monday
//switch day {
//case DayOfWeeks.Monday :
//    print("Monday")
//default:
//    break
//}
//
//if 2 == 2, 3 == 3 {
//    print("T##items: Any...##Any")
//}
//
//var aa:Int = 1
//
//switch aa {
//case 1..<2:
//    print("1..2")
//case 4..<6:
//    print("4..6")
//case 8..<12:
//    print("8..12")
//case 13...16:
//    print("13..16")
//default:
//    break
//}
//
//for (index, value) in strVl.enumerated(){
//    print("\(index) - \(value)")
//}
//
//for i in 1..<10{
//    print(i)
//}
//
//for c in strVl where c == "H"{
//    print(c)
//}
//
//func test( _ :[String], _ : [Double] = [5,6,7,8] ){
//    print("kkkk")
//}
//
//let xxx = test(["ddd"], [1,2,3])
//
//@discardableResult func functionResult() -> Int {
//    return 3
//}
//functionResult()
//
//func variadicParemeter( _ a:String...){
//
//}
//variadicParemeter("1" , "4")
//
//var ii:Int = 10
//var ee:Int = 20
//
//func swap(_ a: inout Int, _ b: inout Int){
//    let l = a
//    a = b
//    b = l
//}
//swap(&ii, &ee)
//print("ii = \(ii)")
//print("ee = \(ee)")

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
func backward(_ s1:String, _ s2:String) -> Bool {
    return s1 > s2
}
var sortNames = names.sorted(by: backward)

//{
//    (_ s1:String, _ s2:String ) -> Bool in {
//        return s1 > s2
//    }
//}
var sortNames1 = names.sorted { (_ s1:String, _ s2:String) -> Bool in
    return s1 > s2
}
var sortNames2 = names.sorted { (s1, s2) -> Bool in
    return s1 > s2
}
var sortName3 = names.sorted { (s1, s2) -> Bool in
    s1 > s2
}
var sortNames4 = names.sorted( by:{ $0 > $1 })
//print(sortName4)

print(sortNames4)

func testClosure(_ a:Int, _ b:Int, _ closure: (Int, Int)->Int, _ closure2: (Int, Int)->Int) -> Int{
    return closure(a,10) + closure2(b, 20)
}

var aa = { (_ a:Int) -> Int in
    return a
}

aa(10)

var bb = { (_ c:(_ b:Int)->Int ) in
    return c(10)
}

func testCl(_ c:()->Int) -> Int{
    return 10
}

testCl { () -> Int in
    return 20
}
