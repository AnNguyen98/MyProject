//
//  Photo.swift
//  PracticeJson
//
//  Created by An Nguyễn on 4/10/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

struct Photo{
    private var _albumId:Int
    private var _id:Int
    private var _title:String
    private var _url:String
    private var _thumbnailUrl:String
    
    var albumId:Int{
        return _albumId
    }
    var id:Int{
        return _id
    }
    var title:String{
        return _title
    }
    var url:String{
        return _url
    }
    var thumbnailUrl:String{
        return _thumbnailUrl
    }
    init(_ albumId:Int,_ id:Int ,_ title:String ,_ url:String ,_ thumbnail:String) {
        self._thumbnailUrl = thumbnail
        self._id = id
        self._title = title
        self._url = url
        self._albumId = albumId
    }
}
