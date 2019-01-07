//
//  ViewController.swift
//  TinhTienTraGop
//
//  Created by An Nguyễn on 2/22/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtMonths: UITextField!
    @IBOutlet weak var lblmoney: UILabel!
    let money = 27000000
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        txtMonths.keyboardType = .numberPad
        addDoneButton(to: txtMonths)
        //lblmoney.text = toVND(number: NSNumber(value: money))
        lblmoney.text = (NSNumber(value: money)).toVND1()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    func toVND(number:NSNumber)->String{
//        let formatter = NumberFormatter()
//        formatter.numberStyle = .currency
//        formatter.maximumFractionDigits = 0
//        formatter.locale = Locale(identifier: "vi-VN")
//        return formatter.string(from: number)!
//    }


}
extension UIViewController{
    func addDoneButton(to control:UITextField){
        let toolBar:UIToolbar = UIToolbar()
        toolBar.items = [
            // Day nut Done sang phai
            UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.flexibleSpace, target: self, action: nil),
            //Tao nut Done
            UIBarButtonItem(title: "Done", style: .done, target: control , action: #selector(UITextField.resignFirstResponder))
        ]
        toolBar.sizeToFit()// set size toolBar phu hop voi ban phim
        control.inputAccessoryView = toolBar
    }
}



