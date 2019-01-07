//
//  LocationAnnotation.swift
//  01_Intro-to-MapKit
//
//  Created by Zebra on 2017-07-17.
//  Copyright © 2017 Mammoth Interactive. All rights reserved.
//

import MapKit

class LocationAnnotation: NSObject, MKAnnotation {
    let name : String
    let address : String
    let desc: String
    let coordinate: CLLocationCoordinate2D
    
    init(name: String, address: String, desc: String, coordinate: CLLocationCoordinate2D) {
        self.name = name
        self.address = address
        self.desc = desc
        self.coordinate = coordinate
        
        super.init()
    }
    
    var title: String? {
        return name
    }
    
    var subtitle: String? {
        return address
    }
}
