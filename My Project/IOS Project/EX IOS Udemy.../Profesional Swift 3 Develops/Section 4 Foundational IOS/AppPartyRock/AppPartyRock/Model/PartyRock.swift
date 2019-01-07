//
//  File.swift
//  AppPartyRock
//
//  Created by An Nguyễn on 4/9/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import Foundation

class PartyRock {
    private var _videoURL:String!
    private var _titleVideo:String!
    private var _imageURL:String!
    
    var videoURL:String {
        return self._videoURL
    }
    var titleVideo:String{
        return self._titleVideo
    }
    var imageURL:String{
        return self._imageURL
    }
    
    init(videoURL:String,titleVideo:String,imageURL:String) {
        self._videoURL = videoURL
        self._imageURL = imageURL
        self._titleVideo = titleVideo
    }
    
}
