//
//  ViewController.swift
//  UIPickerViewP3
//
//  Created by An Nguyễn on 1/20/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UIPickerViewDataSource ,UIPickerViewDelegate {

    var array:Array<Array<String>> = [["Hi","Hello","Bye","Good"],["IOS","PHP","Android","Java" , "NodeJS"],["My Love","Mother","Sister","Father"]]
    
    @IBOutlet weak var pickerView: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        pickerView.dataSource = self
        pickerView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return array[component][row]
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return array[component].count
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return array.underestimatedCount
    }


}

