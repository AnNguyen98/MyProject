//: Playground - noun: a place where people can play
//Nguyen Duc Hoang - sunlight4d@gmail.com
//https://www.youtube.com/c/NguyenDucHoang

import UIKit

var user:[String: String] = ["name": "hoang", "email": "sunlight4d@gmail.com"]
var myNumbers:[Int: String] = [10: "ten", 123: "one hundred and twelve"]
//print(myNumbers[124])

print("user dictionary has \(user.count) keys")
//user["email"] = "hoang123@gmail.com"

if let oldEmail = user.updateValue("hoang1234@gmail.com", forKey: "email") {
    print("old email = \(oldEmail)")
}
//user = [:]
if user.isEmpty {
    print("user dictionary is empty")
} else {
    print("user dictionary is not empty")
}

print(user["email"])

for (myKey, myValue) in user {
    print("key = \(myKey), value = \(myValue)")
}

for eachKey in user.keys {
    print("each key = \(eachKey)")
}
for eachValue in user.values {
    print("each value = \(eachValue)")
}

let allKeys = [String](user.keys)
print("all keys = \(allKeys)")

let allValues = [String](user.values)
print("all values = \(allValues)")





