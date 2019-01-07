//
//  ViewController.swift
//  UIPickerViewP2
//
//  Created by An Nguyễn on 1/20/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {

    var khoaHoc:Array<String> = ["IOS" , "PHP" , "Android" , "NodeJS" , "ReactNative","Apple Watch","Windown Phone" , "Xamarin", "Unity","Javascrip"]
    
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
        return khoaHoc[row]
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return khoaHoc.count
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

}

