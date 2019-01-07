//
//  ViewController.swift
//  UITextField
//
//  Created by An Nguyễn on 1/14/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var textField:UITextField = UITextField()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupTextField()
        textFieldEndEditing(textField: textField)
    }
    
    func setupTextField(){

       // textField.translatesAutoresizingMaskIntoConstraints = false
        textField.frame = CGRect(x: textField.frame.width/2 + 30, y: view.frame.height/5, width: view.frame.width - 60, height: 50)
        //textField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textField.placeholder = "  UserName"
        textField.layer.cornerRadius = 10
        textField.layer.borderColor = #colorLiteral(red: 1, green: 0.0258490509, blue: 0.2641437061, alpha: 1)
        textField.layer.borderWidth = 2
        textField.textColor = #colorLiteral(red: 1, green: 0.0258490509, blue: 0.2641437061, alpha: 1)
        textField.keyboardType = .namePhonePad
        textField.textAlignment = .left
        textField.isSecureTextEntry = false
        textField.delegate = self as? UITextFieldDelegate
        
        view.addSubview(textField)

    }
    
    func textFieldEndEditing(textField:UITextField)->Bool{
        print(textField.text!)
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

