//: Playground - noun: a place where people can play

import UIKit

//var str = "Hello, playground"
//
//let pi = 4.1416
//var x = 102.3
//var name = "An" , age = 20, email = "theannguyen98@=gmail.com"
//print("name = \(name),age = \(age) , email = \(email)")
//var x1 , y , z:Double
//let love = "I love ant"
//let oneBillion = 1000_000_000
//print(oneBillion)
//let number:UInt64 = 100
//let anotherNumber:UInt8 = 10
//let result1 = number + UInt64(anotherNumber)
//typealias BigNumber = Double
//let numberOfAnts:BigNumber = 1000_000
//print(numberOfAnts)
//var numberOfNewMessages:Int? = 10
//numberOfNewMessages = nil
//print("numberOfNewMessages = \(String(describing: numberOfNewMessages))")
////precondition(number < 19, "Number >19")


//let isHero:Bool = true
//let check = !isHero
//let (width,height) = (800,600)
//let x = 10/2
//let string = "hello" + " World !"
//let a = 3%2
//2 != 1
//2 <= 1
//(1 , "cat") < (0,"dog")
//let isHD = (width,height) == (1280 , 720) ? "is HD":"not HD"
//let age:Int? = nil
//let myAge = age ?? 19
//for index in 1...5{
//    print(index)
//}
//if (5 > 1 || 3 > 2){
//    print(true)
//}
//let range = ...7
//range.contains(3)
//range.contains(10)
//let animals = ["cat","dog","tiger","dinosaur"]
//for animal in animals[0...]{
//    print(animal)
//}



//let wellcome = "Hello World!"
//print(wellcome)
//
//let anString = """
//
//    My name is An.
//    Im will be have salary 1000@$
//
//"""
//print(anString)
//let aBlankString = String()
//if aBlankString.isEmpty{
//    print("aBlankStringg is Empty!")
//}
//var aMutableString = "This is a man."
//aMutableString += "This is woman."
//
//for eachCharacter in aMutableString{
//    print(eachCharacter)
//}
//let questionMark :Character = "?"
//aMutableString.append(questionMark)
//print(aMutableString)
//let width = 10
//let aquareArea = "The square area is \(width * width). "
//let ampersandMark = "\u{2602}"
//print(ampersandMark)
//let wellcomeString = "Hello World!"
//print(wellcomeString.startIndex)
//print(wellcomeString[wellcomeString.index(before: wellcomeString.endIndex)])
//print(wellcomeString[wellcomeString.index(after: wellcomeString.startIndex)])
//
//let someString = "I am a Jedi"
//let indexFrom = someString.startIndex
//let indexTo = someString.index(wellcomeString.startIndex, offsetBy: 4)
//let subString = someString[indexFrom...indexTo]
//
//let myLove1 = "I love you"
//let myLove2 = "I love you"
//
//myLove1 == myLove2
//let stringWidthPrefix = "mr An makes this sample"
//stringWidthPrefix.hasPrefix("mr")
//stringWidthPrefix.hasSuffix("An")//cuoi
//stringWidthPrefix.uppercased()
//stringWidthPrefix.lowercased()


//var someDoubles = [Double]()
//someDoubles.append(2.4)
//someDoubles.append(contentsOf: [2.5,0.5])
//someDoubles.count
//var tenIntegers = Array(repeatElement(5, count: 10))
//var fiveInteger = Array(repeatElement(10, count: 5))
//var result = tenIntegers + fiveInteger
//var smartPhones = ["Iphone" , "samsu  galaxy","htc One"]
//print(smartPhones[1...2])
//smartPhones.insert("Windown", at: 2)
//print(smartPhones)
//for smartPhone in smartPhones{
//    print(smartPhone)
//}
//for (index,value) in smartPhones.enumerated(){
//    print("value : \(value) , index : \(index)")
//}


//var starWarCharacters:Set<String> = ["Anakin Skywalker","Luke","Yoda"]
//print(starWarCharacters.count)
//print(starWarCharacters.isEmpty)
//
//starWarCharacters.insert("Leia")
//starWarCharacters.remove("Luke")
//print(starWarCharacters.sorted())
//
//starWarCharacters.contains("Luke")
//
//for starWarCharacter in starWarCharacters{
//    print("starWarCharacter = \(starWarCharacter)")
//}
//
//let set1:Set = [1,3,5,7,6,4,5]
//let set2:Set = [2,4,6,8,9,0,4]
//
//let resultSet = set1.intersection(set2).sorted()// giao 2 tap hop
//print(resultSet)
//
//let resultSet2 = set1.union(set2) //hop 2 tap hop
//print(resultSet2)
//
//let resultSet3 = set1.subtracting(set2).sorted()//phan tu nam o set 1 khong nam o set2
//print(resultSet3 )
//let resultSet4 = set1.symmetricDifference(set2).sorted()//phan tu nam o set2 khong nam o set1
//print(resultSet4 )
//
//set1.isSubset(of: set2)
//set1.isSuperset(of: set2)
//
//set1.isDisjoint(with: set2)// khac nhau hoan toan



//
//var user:[String:String] = ["name":"An","email":"theannguyen98@gmail.com"]
//var myNumber:[Int:String] = [10:"name",123:"One hundred and twenty three"]
//print(myNumber[10]!)
//print(user["email"]!)
//print(user.count)
//
////user["email"] = "theank16@"
//if let oldEmail = user.updateValue("theank16@", forKey: "email"){
//    print(oldEmail)
//}
////user = [:]
//user.isEmpty
//
//for (key,Value) in user{
//    print("key: \(key),value: \(Value)")
//}
//
//for eachKey in user.keys{
//    print("key : \(eachKey)")
//}
//
//for value in user.values{
//    print("value : \(value)")
//}
//
//let allKey = [String](user.keys)
//print(allKey)
//
//let allValue = [String](user.values)
//print(allValue)




//for i in 1..<5{
//    print(i)
//}
//for _ in 1...5{ //Nhanh hon
//    print()
//}

//for index in stride(from: 1, to: 10, by: 2){
//    print(index)
//}
//
//var startValue = 0
//while startValue < 10 {
//    print("Hello")
//    break
//    startValue += 1
//}
//repeat{
//    print("1")
//    startValue += 1
//}while startValue < 10

//var yourPoint = 2
//var estimation:String
//switch yourPoint {
//case 0..<2:
//    estimation = "very bad"
//case 2..<5:
//    estimation = "under average"
//case 5..<7:
//    estimation = "average"
//case 7..<9:
//    estimation = "Good"
//case 9...10:
//    estimation = "Exellent"
//default:
//    estimation = "Not a valid value"
//}
//print("estimation = \(estimation)")

//let starWarCharacter = "Mace Windu"
//switch starWarCharacter {
//case "Yoda","Obiwan-Kenoby","Mace Windu":
//    print("\(starWarCharacter) is a jedi")
//    fallthrough
//case "Darth Sidious","Anakin Skywalker","Drath Maul":
//    print("\(starWarCharacter) is a freelancer")
//    fallthrough // di tieep khong dung
//default:
//    print("\(starWarCharacter) is not a star war's character")
//}




//func sum2Numbers(a:Int,b:Int)->Int{
//    return a + b
//}
//func  sayHello()->String{
//    return "Hello,How are you."
//}
//func sayHello1(){
//    print("Hello.")
//}
//print("sum 2 + 3 is : \(sum2Numbers(a: 2, b: 3))")
//print(sayHello())
//
//func calculateSumAndMultiply(a:Double,b:Double)->(tong:Double,tich:Double)?{
//    return (a+b,a*b)
//}
//if let result1 = calculateSumAndMultiply(a: 4, b: 5){
//    print("result1 = \(result1)")
//}else{
//    print("result is nil")
//}
//
//func multiply2Number(_ a:Float,_ b:Float)->Float{
//    return a * b
//}
//print("multiply : \(multiply2Number(3, 3))")
//
//func getRectangleArea(width:Double,height:Double)->Double{
//    return width * height
//}
//print(getRectangleArea(width: 10, height: 10))

//func s(a:Int = 10,b:Int)->Int{
//    return a + b
//}
//print(s(b: 3))
//
//func sum1(_ numbers:Int...)->Int{
//    var sum:Int = 0
//    for number in numbers{
//        sum += number
//    }
//    return sum
//}
//sum1(1,2,3,4,5,5,6,7,9)
//
//var aString = "I am a man"
//print("aString before :  \(aString)")
//func inoutFuncCanChange(_ a:inout String){
//    a = "I am a girl"
//}
//inoutFuncCanChange(&aString)
//print("aString after : \(aString)")
//
//func showGreeting(){
//    func showHello(){
//        print("Hello")
//    }
//    func sayGoodbye(){
//        print("Goodbye")
//    }
//    showHello()
//    sayGoodbye()
//}
//print(showGreeting())
//showGreeting()


