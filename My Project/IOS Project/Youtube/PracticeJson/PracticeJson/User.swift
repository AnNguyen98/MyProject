//
//  User.swift
//  PracticeJson
//
//  Created by An Nguyễn on 4/10/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

struct User {
    private var postId:Int
    private var id:Int
    private var name:String
    private var email:String
    private var body:String
    
    var _postId:Int{
        return postId
    }
    var _id:Int{
        return id
    }
    var _name:String{
        return name
    }
    var _body:String{
        return body
    }
    var _email:String{
        return email
    }
    init(_ postId:Int,_ id:Int,_ name:String,_ email:String, _ body:String) {
        self.postId = postId;
        self.id = id
        self.name = name
        self.email = email
        self.body = body
    }
    
}
