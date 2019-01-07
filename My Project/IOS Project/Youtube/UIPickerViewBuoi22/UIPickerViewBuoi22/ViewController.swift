//
//  ViewController.swift
//  UIPickerViewBuoi22
//
//  Created by An Nguyễn on 3/22/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {

    let arrayHinh:Array<String> = ["1","2","3","4","5","6","7","8","9","10","11","12"]
    
    @IBOutlet weak var myPickerView: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myPickerView.delegate = self
        myPickerView.dataSource = self
        myPickerView.selectRow(5, inComponent: 0, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrayHinh.count
    }
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 300
    }
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let viewChinh:UIView = UIView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 200))
        let imageView:UIImageView = UIImageView(image: UIImage(named: arrayHinh[row]))
        imageView.contentMode = .scaleToFill
        let labelView:UILabel = UILabel()
        labelView.text = "Hello"
        
        viewChinh.addSubview(imageView)
        viewChinh.addSubview(labelView)
        labelView.frame = CGRect(x: 0, y: viewChinh.frame.height - 45, width: 300, height: 45)
        //labelView.backgroundColor = UIColor.blue
        
        return viewChinh
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(row)
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }


}

