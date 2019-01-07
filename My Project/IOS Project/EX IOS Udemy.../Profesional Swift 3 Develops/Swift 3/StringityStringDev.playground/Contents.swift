//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var firstName = "Jack"
var lastName = "Bauer"

var fullName = firstName + " " + lastName
var fullName2 = "\(firstName) \(lastName)"

fullName.append(" III")

var bookTitle = "revenge of the crab cakes"

bookTitle = bookTitle.capitalized

var chatroomAnnoyingCapsRemover = "HAHAHA THAT IS SO FUNNY"

var lowercasedChat = chatroomAnnoyingCapsRemover.lowercased()

//mormon swearword remover
var sentence = "What the fetch?! Heck that is crazy!"

if sentence.contains("fetch") || sentence.contains("Heck") {
    print("This person is a mormon")
}

sentence.replacingOccurrences(of: "fetch", with: "tuna")
sentence.replacingOccurrences(of: "Heck", with: "Playa")




