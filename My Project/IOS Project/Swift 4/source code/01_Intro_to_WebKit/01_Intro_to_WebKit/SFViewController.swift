//
//  SFViewController.swift
//  01_Intro_to_WebKit
//
//  Created by Zebra on 2017-07-31.
//  Copyright © 2017 Mammoth Interactive. All rights reserved.
//

import UIKit
import SafariServices

class SFViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func safariButtonWasTapped(_ sender: Any) {
        
        let safariView = SFSafariViewController(url: URL(string: "https://www.apple.com")!)
        present(safariView, animated: true, completion: nil)
    }
    
}
