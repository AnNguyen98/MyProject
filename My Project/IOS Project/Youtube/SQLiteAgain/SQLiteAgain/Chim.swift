//
//  Chim.swift
//  SQLiteAgain
//
//  Created by An Nguyễn on 4/21/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit
import SQLite

struct Chim{
    var idChim:String = ""
    var tenChim:String = ""
    var hinhChim:String = ""
    
    init(){
        
    }
    init(row:Row) {
        let id = Expression<Int>("idChim")
        let ten = Expression<String>("tenChim")
        let hinh = Expression<String>("hinhChim")
        
        idChim = String(row[id])
        tenChim = row[ten]
        hinhChim = row[hinh]
        
    }
}
