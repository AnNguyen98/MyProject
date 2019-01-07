//
//  ViewController.swift
//  DatePicker
//
//  Created by An Nguyễn on 1/7/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var DatePicker: UIDatePicker!
    @IBAction func DatePicker(_ sender: Any) {
        
        print(DatePicker.date)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

