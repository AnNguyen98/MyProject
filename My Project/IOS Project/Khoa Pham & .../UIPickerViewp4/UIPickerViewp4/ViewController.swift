//
//  ViewController.swift
//  UIPickerViewp4
//
//  Created by An Nguyễn on 1/20/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UIPickerViewDataSource,UIPickerViewDelegate {
    @IBOutlet weak var imgHinh: UIImageView!
    
    let arrayHinh:Array<UIImage> = [#imageLiteral(resourceName: "hinh1"),#imageLiteral(resourceName: "hinh2"),#imageLiteral(resourceName: "hinh3"),#imageLiteral(resourceName: "hinh4"),#imageLiteral(resourceName: "hinh5"),#imageLiteral(resourceName: "hinh6"),#imageLiteral(resourceName: "hinhNen1"),#imageLiteral(resourceName: "hinhNen2"),#imageLiteral(resourceName: "hinhNen3"),#imageLiteral(resourceName: "hinhDep-1507458888625"),#imageLiteral(resourceName: "Hinh"),#imageLiteral(resourceName: "HinhNenDaily"),#imageLiteral(resourceName: "HinhNenDaily1"),#imageLiteral(resourceName: "HinhNenDaily")]
    
    @IBOutlet weak var pickerView: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        pickerView.dataSource = self
        pickerView.delegate = self
        pickerView.selectRow(4, inComponent: 0, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrayHinh.count
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        imgHinh.image = arrayHinh[row]
    }
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 100
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let img:UIImageView = UIImageView()
        img.image = arrayHinh[row]
        img.contentMode = .scaleAspectFit
        return img
    }
    
}

