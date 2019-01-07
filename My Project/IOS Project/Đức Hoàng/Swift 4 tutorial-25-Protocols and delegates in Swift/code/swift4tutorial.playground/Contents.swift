//Protocols and delegates in Swift 4
//Nguyen Duc Hoang - sunlight4d@gmail.com
//https://www.youtube.com/c/NguyenDucHoang

import UIKit
//Delegation
protocol ExampleDelegate {
    func method1()
}
//Delegation enables a class or structure to delegate some of its responsibilities to an instance of another type
//Class that have delegate property
class ExampleClass {
    var delegate: ExampleDelegate?
    func reloadData() {
        print("running reload data...")
        print("do some tasks in 1 seconds...")
        delegate?.method1()
        print("do some tasks in 3 seconds...")
        
    }
}

class ClassConformDelegate: ExampleDelegate {
    var aProperty: ExampleClass
    init(aProperty: ExampleClass) {
        self.aProperty = aProperty
        self.aProperty.delegate = self
        self.aProperty.reloadData()
    }
    
}
//Adding Protocol Conformance with an Extension
extension ClassConformDelegate {
    //Implement delegate functions
    func method1() {
        print("ClassConformDelegate calls method1")
    }
}

let a = ClassConformDelegate(aProperty: ExampleClass())

protocol TextRepresentable {
    var textualDescription: String {get}
}
class Animal:TextRepresentable {
    var name: String
    init(name: String) {
        self.name = name
    }
    
}
extension Animal {
    var textualDescription: String {
        return "This is an Animal"
    }
}
//Optional Protocol Requirements
@objc protocol ExampleProtocol {
    @objc optional func method3()
    @objc optional var property3: Int { get }
}
class AnExampleClass: ExampleProtocol {
    //No need to implement method3 or property3
}



