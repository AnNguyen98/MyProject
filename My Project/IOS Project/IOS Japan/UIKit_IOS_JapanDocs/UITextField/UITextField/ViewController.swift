//
//  ViewController.swift
//  UITextField
//
//  Created by An Nguyễn on 3/13/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    
    private var myTextField:UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myTextField = UITextField(frame: CGRect(x: 0, y: 0, width: 200, height: 45))
        myTextField.borderStyle = .roundedRect
        myTextField.layer.cornerRadius = 20
        myTextField.layer.borderColor = UIColor.red.cgColor
        myTextField.layer.borderWidth = 1
        myTextField.text = "Hello IOS!"
        myTextField.layer.masksToBounds = true
        myTextField.textColor = UIColor.red
        myTextField.layer.position = CGPoint(x: self.view.bounds.width/2, y: self.view.frame.size.height/2-22.5)
        
        
        myTextField.delegate = self
        self.view.addSubview(myTextField)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    func textFieldDidEndEditing(_ textField: UITextField) {
//        print("textFieldDidEndEditing" + myTextField.text!)
//    }
//    func textFieldShouldClear(_ textField: UITextField) -> Bool {
//        print("textFieldShouldClear!!")
//        return true
//    }
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("textFieldDidBeginEditing" + myTextField.text!)
    }
//    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
//        print("textFieldShouldBeginEditing" + myTextField.text!)
//        return true
//    }
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        print("textFieldShouldReturn" + myTextField.text!)
//        return true
//    }
    


}

