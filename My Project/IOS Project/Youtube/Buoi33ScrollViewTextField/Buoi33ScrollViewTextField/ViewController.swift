//
//  ViewController.swift
//  Buoi33ScrollViewTextField
//
//  Created by An Nguyễn on 3/27/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewDK: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        NotificationCenter.default.addObserver(self, selector: #selector(willShow), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(willHide), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
        
    }
    
    @objc func willShow(notification:Notification){
        let keyboard = 
    }
    @objc func willHide(notification:Notification){
        print("Keyboard will hide")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func txtEditingDidBegin(_ sender: Any) {
       
        let txtTextField:UITextField = sender as! UITextField
        txtTextField.delegate = self
        let yTong = viewDK.frame.origin.y + txtTextField.frame.origin.y + txtTextField.frame.height
         print(yTong)
    }
    

}
extension ViewController:UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.endEditing(true)
        return true
    }
}
