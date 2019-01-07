//
//  ViewController.swift
//  DAtePickerCustom
//
//  Created by An Nguyễn on 1/7/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBOutlet weak var lblDate: UILabel!
    @IBAction func btnDatePicker(_ sender: Any) {
        
        let formatter:DateFormatter = DateFormatter()
        formatter.dateFormat = "E,d-M-Y / h:m:s / a"
        lblDate.text = formatter.string(from: datePicker.date)
        
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

