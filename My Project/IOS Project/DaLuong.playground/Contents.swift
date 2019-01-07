//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Blocking FIFO
//B1 Tao queue
//B2 Dua code vao cac ham async

//Cach 1: Queue
//let queue = DispatchQueue(label: "queue")
//queue.async {
//    for i in 1...10{
//        print(i)
//    }
//}
//
//for i in 1...10{
//    print(i)
//}


//Cach 2 : Group
//let queue2 = DispatchQueue(label: "queue2")
//let group = DispatchGroup()
//group.enter()
//queue2.async {
//    for i in 1...10000{
//        print(i)
//    }
//    group.leave()
//}
//print(group.wait(timeout: DispatchTime.now() + 3))

