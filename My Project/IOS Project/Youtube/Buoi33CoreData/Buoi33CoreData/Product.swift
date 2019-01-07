//
//  Product.swift
//  Buoi33CoreData
//
//  Created by An Nguyễn on 3/30/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import Foundation
import CoreData
import AVKit

struct SanPham{
    let id:Int32
    let price:Double
    let name:String
    let image:String
    init(mana:NSObject) {
        id  = mana.value(forKey: "id") as! Int32
        price = mana.value(forKey: "price") as! Double
        name = mana.value(forKey: "name") as! String
        image = mana.value(forKey: "image") as! String
        
    }
}
