//
//  LocationDetailViewController.swift
//  01_Intro-to-MapKit
//
//  Created by Zebra on 2017-07-18.
//  Copyright © 2017 Mammoth Interactive. All rights reserved.
//

import UIKit

class LocationDetailViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var commentsLabel: UILabel!
    
    var header: String?
    var desc: String?
    var comments: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = header
        descLabel.text = desc
        commentsLabel.text = comments
    }
    
    
    @IBAction func backButtonWasTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
