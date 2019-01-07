//Automatic Reference Counting - ARC in Swift 4
//Nguyen Duc Hoang - sunlight4d@gmail.com
//https://www.youtube.com/c/NguyenDucHoang

import UIKit
/*
class Customer {
    let name: String
    init(name: String) {
        self.name = name
        print("\(self.name) is being initialized")
    }
    deinit {
        print("\(self.name) is being deinitialized")
    }
    var house:House?
}
 */
/*
var customer1: Customer?
var customer2: Customer?
var customer3: Customer?
customer1 = Customer(name: "Nguyen Duc Hoang")
customer2 = customer1
customer3 = customer1
customer1 = nil
customer2 = nil
customer3 = nil
 */
/*
class House {
    var address: String
    init(address: String) {
        self.address = address
    }
    weak var author: Customer?
    deinit {
        print(" House at: \(address) is being deinitialized")
    }
}
var mrHoang:Customer?
var hisHouse:House?
mrHoang = Customer(name: "Nguyen Duc Hoang")
hisHouse = House(address: "45 Maihuong, Hai Ba Trung district, Hanoi, Vietnam")
mrHoang!.house = hisHouse
hisHouse!.author = mrHoang
mrHoang = nil
hisHouse = nil
*/
class User {
    let name: String
    var card: CreditCard?
    init(name: String) {
        self.name = name
    }
    deinit {
        print("User: \(name) is being deinitialized")
    }
}

class CreditCard {
    let number: UInt64
    unowned var user: User
    init(number: UInt64, user: User) {
        self.number = number
        self.user = user
    }
    deinit { print("Card #\(number) is being deinitialized") }
}

var mrAlex:User?
var creditCard:CreditCard?

mrAlex = User(name: "Alex")
creditCard = CreditCard(number: 1234_5678_9012_3456, user:mrAlex!)
mrAlex!.card = creditCard
mrAlex = nil




