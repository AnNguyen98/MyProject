//: Playground - noun: a place where people can play

import UIKit

protocol Tinh{
    func cong(a:Int , b:Int)->Int
}

func tinhtoan(a : Int , b : Int , tinhtoan:Tinh)->Int{
    return tinhtoan.cong(a: a, b: b)
}

class tinhcong:Tinh{
    func cong(a: Int, b: Int) -> Int {
        return a+b
    }
}

class tinhtru:Tinh{
    func cong(a: Int, b: Int) -> Int {
      return a - b
    }
}

tinhtoan(a: 1, b: 1 ,tinhtoan: tinhtru())


