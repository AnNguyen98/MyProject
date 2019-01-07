//
//  ViewController.swift
//  UITextFields Intro
//
//  Created by Owl on 2017-08-15.
//  Copyright © 2017 Owl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var label: UILabel!
    
    let label2 = UILabel(frame: CGRect(x: 20, y: 240, width: 280, height: 40))
    let textField2 = UITextField(frame: CGRect(x: 20, y: 300, width: 280, height: 40))
    
    var shouldEditTextField = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        textField1.allowsEditingTextAttributes = true
        //textField1.becomeFirstResponder()
        label2.backgroundColor = UIColor.white
        
        textField1.delegate = self
        
        textField2.backgroundColor = UIColor.gray
        textField2.textAlignment = .center
        textField2.placeholder = "Enter text here"
        textField2.clearButtonMode = .whileEditing
        textField2.enablesReturnKeyAutomatically = true
        //textField2.delegate = self
        textField2.addTarget(self, action: #selector(didEndEditingTextField2(_:)), for: .editingDidEnd)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func pressButton(_ sender: UIButton) {
        /*if let textFieldText = textField1.text {
            label.text = textFieldText
        }*/
        //shouldEditTextField = true
        if !self.view.subviews.contains(textField2) {
            self.view.addSubview(textField2)
        }
    }
    
    @IBAction func beginEditing(_ sender: UITextField) {
        /*print("Editing began")
        self.view.backgroundColor = UIColor.green
        self.view.addSubview(label2)*/
    }
    
    @IBAction func changeEditing(_ sender: UITextField) {
        /*print("TextField content changed")
        if let textFieldText = textField1.text {
            label2.text = textFieldText
        }*/
    }
    
    @IBAction func endEditing(_ sender: UITextField) {
        /*print("Editing ended")
        if let textFieldText = textField1.text {
            label.text = textFieldText
        }
        label2.removeFromSuperview()*/
    }
    
    @IBAction func exitAfterEditing(_ sender: UITextField) {
        /*print("TextField resigned first responder")
        self.view.backgroundColor = UIColor.white*/
    }
    
    @objc func didEndEditingTextField2(_ sender: UITextField) {
        if let textFieldText = sender.text {
            label.text = textFieldText
        }
    }
    
}

extension ViewController: UITextFieldDelegate {
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        /*self.view.addSubview(label2)
        label2.text = (textField.text)!*/
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        //return shouldEditTextField
        return true
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let allowedCharacterSet = NSCharacterSet.letters
        let spaceCharacterSet = NSCharacterSet(charactersIn: " ")
        
        let existingTextCount = textField.text?.count ?? 0
        let replacedTextCount = range.length
        let replacementStringCount = string.count
        let newTextCount = existingTextCount + replacementStringCount - replacedTextCount
        
        if newTextCount > 6 {
            return false
        }
        if string.rangeOfCharacter(from: allowedCharacterSet) != nil {
            return true
        } else if string.rangeOfCharacter(from: spaceCharacterSet as CharacterSet) != nil {
            return true
        } else if string.isEmpty {
            return true
        }
        return false
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        /*guard let text = textField.text else { return false }
        if text != "" {
            return true
        } else {
            return false
        }*/
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        self.view.backgroundColor = UIColor.red
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        self.view.backgroundColor = UIColor.white
        if textField == textField1 {
            if let text = textField.text {
                label.text = text
            }
        } else if textField == textField2 {
            if let text = textField.text {
                if text != "" {
                    label.text = text
                }
            }
        }
        
        //textField.text?.removeAll()
    }
    
    // Usually used with TVOS, works the same as the above function
    /*
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextFieldDidEndEditingReason) {
        
    }
 */
    
}



