//
//  ViewController.swift
//  UIPickerViewDemo
//
//  Created by An Nguyễn on 1/21/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    @IBOutlet weak var lblTen: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var imgHInh: UIImageView!
    
    var arrayHinh:Array<Array<UIImage>> = [[#imageLiteral(resourceName: "hinhNen1"),#imageLiteral(resourceName: "hinhNen2"),#imageLiteral(resourceName: "hinhNen3"),#imageLiteral(resourceName: "hinhDep-1507458888625"),#imageLiteral(resourceName: "hinh6"),#imageLiteral(resourceName: "hinh5"),#imageLiteral(resourceName: "hinh4"),#imageLiteral(resourceName: "hinh3"),#imageLiteral(resourceName: "hinh2"),#imageLiteral(resourceName: "hinh1"),#imageLiteral(resourceName: "HinhNenDaily1"),#imageLiteral(resourceName: "Hinh"),#imageLiteral(resourceName: "HinhNenDaily")]]
    var arrayTenHinh:Array<Array<String>> = [["Hinh 1","Hinh 2","Hinh 3","Hinh 4","Hinh 5","Hinh 6","Hinh 7","Hinh 8","Hinh 9","Hinh 10","Hinh 11","Hinh 12","Hinh 13"]]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        pickerView.selectRow(1, inComponent: 0, animated: true)
        imgHInh.image = arrayHinh[0][0]
        lblTen.text = arrayTenHinh[0][0]
        pickerView.delegate = self
        pickerView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let myView:UIView = UIView()
        myView.layer.frame = CGRect(x: 0, y: 0, width: pickerView.frame
        .width, height: pickerView.frame.height)
        let lblTenHinh:UILabel = UILabel(frame: CGRect(x: 0, y: myView.frame.height - 30, width: myView.frame.width, height: 30))
        let myImage:UIImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: myView.frame.width, height: myView.frame.height))
        myImage.image = arrayHinh[component][row]
        myImage.contentMode = .scaleAspectFill
        myImage.clipsToBounds = true
        lblTenHinh.text = arrayTenHinh[component][row]
        
        myView.addSubview(lblTenHinh)
        myView.addSubview(myImage)
        
        return myView
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return arrayHinh.underestimatedCount
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrayHinh[component].count
    }
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return pickerView.frame.height
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        imgHInh.image = arrayHinh[component][row]
        imgHInh.contentMode = .scaleAspectFill
        imgHInh.clipsToBounds = true
        lblTen.text = arrayTenHinh[component][row]
    }

}

