//
//  Users.swift
//  PracticeJson
//
//  Created by An Nguyễn on 4/10/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit
struct Users{
    private var _id:Int
    private var _name:String
    private var _userName:String
    private var _email:String
    private var _adress:Dictionary<String,AnyObject>
    private var _phone:String
    private var _website:String
    private var _company:Dictionary<String,String>
    
    var id:Int{
        return _id
    }
    var name:String{
        return _name
    }
    var userName:String{
        return _userName
    }
    var phone:String{
        return _phone
    }
    var website:String{
        return _website
    }
    var email:String{
        return _email
    }
    var company:Dictionary<String,String>{
        return _company
    }
    var adress:Dictionary<String,AnyObject>{
        return _adress
    }
    init(_ id:Int,_ name:String,_ userName:String,_ phone:String,_ website:String,_ email:String,_ company:Dictionary<String,String>,_ adress:Dictionary<String,AnyObject>) {
        self._adress = adress
        self._company = company
        self._email = email
        self._id = id
        self._phone = phone
        self._userName = userName
        self._name = name
        self._website = website
    }
    
}
