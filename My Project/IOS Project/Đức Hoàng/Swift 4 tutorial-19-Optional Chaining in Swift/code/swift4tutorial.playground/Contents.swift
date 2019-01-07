//Optional Chaining in Swift 4
//Nguyen Duc Hoang - sunlight4d@gmail.com
//https://www.youtube.com/c/NguyenDucHoang

import UIKit
/*
class User {
    var name: String
    var readingBook: Book?
    init(name: String) {
        self.name = name
    }
}
class Book {
    var numberOfPages = 1000
}
var mrHoang = User(name: "Nguyen Duc Hoang")
mrHoang.readingBook = Book()
if let numberOfPages = mrHoang.readingBook?.numberOfPages {
    print("Book of \(mrHoang.name) has \(numberOfPages) pages.")
} else  {
    print("Failed to get number of pages")
}
 */
class Address {
    var buildingName: String?
    var buildingNumber: String?
    var street: String?
    func detailAddress() -> String? {
        if let buildingName = buildingName, let buildingNumber = buildingNumber, let street = street {
            return "\(buildingName) \(buildingNumber) \(street)"
        } else {
            return nil
        }
    }
}
let address = Address()
address.buildingName = "Sunrise Building"
address.buildingNumber = "A1234"
address.street = "Acacia Road"

if let detailAddress = address.detailAddress() {
    print(detailAddress)
} else {
    print("Cannot get detail address")
}
 
/*
if address.detailAddress() != nil {
    print(address.detailAddress())
} else {
    print("Cannot get detail address")
}
*/
var testScores = [
                    "Hoang": [60, 70, 80],
                    "Alex": [79, 94, 81]
                ]
//testScores["Hoang"]?[0] = 99
//testScores["Alex"]?[0] += 1
testScores["Hoang1234"]?[0] = 99
print(testScores)

