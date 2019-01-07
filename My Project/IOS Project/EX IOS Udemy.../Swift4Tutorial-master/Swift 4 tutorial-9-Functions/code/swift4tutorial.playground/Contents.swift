//Functions in Swift 4
//Nguyen Duc Hoang - sunlight4d@gmail.com
//https://www.youtube.com/c/NguyenDucHoang

import UIKit

func sum2Numbers(a: Int, b: Int) -> Int {
//    let c = a + b
    return a + b
}
//print("sum 2 + 4 is: \(sum2Numbers(a: 2, b: 4))")
func sayHello() {
    print("Hello, how are you ?")
}
//sayHello()

func calculateSumAndMultiply(a: Double, b: Double) -> (sum: Double, multiply: Double)? {
    let result = (a + b, a * b)
    return result
}
//print(calculateSumAndMultiply(a: 2, b: 3))
if let result1 = calculateSumAndMultiply(a: 10, b: 20) {
    print("result1 = \(result1)")
} else {
    print("result is nil")
}

func multiply2Numbers(_ a: Float, _ b: Float) -> Float{
    return a * b
}

//print("Multiply without parameter names : \(multiply2Numbers(120, 30))")
func getRectangleArea(width: Double, height: Double = 100) -> Double {
    return width * height
}
//print("Area of the rectangle is: \(getRectangleArea(width: 10.0, height: 20.0))")
//print("Area of the rectangle is: \(getRectangleArea(width: 10.0))")

func sumMultipleNumbers(_ numbers: Double...) -> Double {
    var total: Double = 0.0
    for number in numbers {
        total = total + number
    }
    return total
}
//print("Total numbers = \(sumMultipleNumbers(1, 2))")
var aString = "I am a man"
print("String before: \(aString)")
func inoutFunction(_ a: inout String) {
    a = "I am a hero"
}
inoutFunction(&aString)
print("String after: \(aString)")

func showGreeting() {
    func showHello() {
        print("Hello everybody !")
    }
    func showAQuestion() {
        print("How about your work ?")
    }
    showHello()
    showAQuestion()
}

showGreeting()













