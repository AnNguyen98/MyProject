//
//  Product.swift
//  PracticeJson
//
//  Created by An Nguyễn on 4/10/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

struct Product {
    private var userId:Int
    private var title:String
    private var id:Int
    private var body:String
    
    var _userId:Int{
        return userId
    }
    var _title:String{
        return title
    }
    var _id:Int{
        return id
    }
    var _body:String{
        return body
    }
    init(_ userId:Int,_ title:String, _ id:Int,_ body:String) {
        self.userId = userId;
        self.title = title
        self.id = id
        self.body = body
    }
    
}
