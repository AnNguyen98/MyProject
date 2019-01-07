//
//  ViewController.swift
//  DatePickerP2
//
//  Created by An Nguyễn on 1/7/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var DatePicker: UIDatePicker!
    @IBOutlet weak var lblPicker: UILabel!
    
    @IBAction func DAtePicker(_ sender: Any) {
        let formatter:DateFormatter = DateFormatter()
        formatter.dateStyle = .full
        formatter.timeStyle = .full
        
        lblPicker.text = formatter.string(from: DatePicker.date)
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

