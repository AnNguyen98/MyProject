//
//  ViewController.swift
//  UIPickerView_11
//
//  Created by An Nguyễn on 3/13/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {

    private let items:Array<String> = ["IOS","PHP","Android","React-Native"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let myPickerView:UIPickerView = UIPickerView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        myPickerView.dataSource = self
        myPickerView.delegate = self
        
        view.addSubview(myPickerView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return items.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return items[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("SelectRow : \(row)")
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

}

