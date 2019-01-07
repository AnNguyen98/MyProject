//
//  ViewController.swift
//  Map
//
//  Created by An Nguyễn on 1/16/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
//    16.055744 , 108.199496
    
    let toaDo:CLLocation = CLLocation(latitude: 16.055744, longitude: 108.199496)
    let toaDo2D:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 16.055744, longitude: 108.199496)

    @IBOutlet weak var mapKit: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

