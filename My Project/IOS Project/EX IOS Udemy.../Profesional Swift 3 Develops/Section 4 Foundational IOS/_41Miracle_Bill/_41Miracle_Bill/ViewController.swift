//
//  ViewController.swift
//  _41Miracle_Bill
//
//  Created by An Nguyễn on 2/23/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {

    let stateArray:Array<String> = ["Hà Nội","TP.HCM","Hà Tĩnh","Cần Thơ","Đà Nẵng"]
    
    
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var chooseYourStateBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //self.view.backgroundColor = UIColor.purple
        pickerView.delegate = self
        pickerView.dataSource = self
        
    }
    @IBAction func chooseYourStateBtn(_ sender: Any) {
        pickerView.isHidden = false
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        chooseYourStateBtn.setTitle(stateArray[row], for: UIControlState())
        //chooseYourStateBtn.titleLabel?.text = stateArray[row]
        pickerView.isHidden = true
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return stateArray[row]
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return stateArray.count
    }
    


}

