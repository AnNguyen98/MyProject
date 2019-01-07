//
//  ViewController.swift
//  formLoginScrollView
//
//  Created by An Nguyễn on 3/29/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate{

    @IBOutlet weak var scrView: UIScrollView!
    @IBOutlet weak var contentBottomImage: NSLayoutConstraint!
    var keyboardHeight:CGFloat = 0
    var khoangCach:CGFloat = 0
    
    @IBOutlet weak var viewLogin: UIView!
    @IBOutlet weak var lblLogin: UILabel!
    @IBOutlet weak var txtUserName: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var btnBack: UIButton!
    @IBOutlet weak var btnLogin: UIButton!
    @IBAction func txtBatSuKien(_ sender: Any) {
        
       
        khoangCach = self.view.frame.height - ((sender as! UITextField).frame.origin.y
            + viewLogin.frame.origin.y +  (sender as! UITextField).frame.height)
            
        print("keyboardHeight = \(keyboardHeight , khoangCach)")
        
    }
    
    //
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        set()
        txtUserName.delegate = self
        password.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
    }
    
    @objc func keyboardWillShow(_ notification:Notification){
        if let keyboardFrame:NSValue = notification.userInfo![UIKeyboardFrameEndUserInfoKey] as? NSValue{
            let keyboardREctangle = keyboardFrame.cgRectValue
            keyboardHeight = keyboardREctangle.height
            if keyboardHeight > khoangCach{
                contentBottomImage.constant = keyboardHeight - khoangCach + 10
                
                UIView.animate(withDuration: 0.5, animations: {
                    self.view.layoutSubviews()
                    self.scrView.setContentOffset(CGPoint(x: 0, y: self.keyboardHeight - self.khoangCach + 30) , animated: true)
                })
            }
        }
    }
    @objc func keyboardWillHide(_ notification:Notification){
        if let keyboardFrame:NSValue = notification.userInfo![UIKeyboardFrameEndUserInfoKey] as? NSValue{
            let keyboardRectangle = keyboardFrame.cgRectValue
            keyboardHeight = keyboardRectangle.height
        }
        contentBottomImage.constant = 0
        
        UIView.animate(withDuration: 0.5, animations: {
            self.view.layoutSubviews()
            self.scrView.setContentOffset(CGPoint(x: 0, y: 0) , animated: true)
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    func set(){
        lblLogin.setBorder(color: UIColor.blue, borderWidth: 2, cornerRadious: 10)
        txtUserName.setBorder(color: UIColor.brown, borderWidth: 2, cornerRadious: 10)
        password.setBorder(color: UIColor.brown, borderWidth: 2, cornerRadious: 10)
        btnBack.setButton(color: UIColor.red, borderWidth: 3, cornerRadious: 10)
        btnLogin.setButton(color: UIColor.red, borderWidth: 3, cornerRadious: 10)
        viewLogin.setBorder(color: UIColor.red, borderWidth: 2, cornerRadious: 10)
    }

}

extension UIView{
    func setBorder(color:UIColor , borderWidth:CGFloat,cornerRadious:CGFloat){
        self.layer.borderColor = color.cgColor
        self.layer.borderWidth = borderWidth
        self.layer.cornerRadius = cornerRadious
        self.clipsToBounds = true
    }
    func setButton(color:UIColor , borderWidth:CGFloat,cornerRadious:CGFloat){
        self.layer.borderColor = color.cgColor
        self.layer.borderWidth = borderWidth
        self.layer.cornerRadius = cornerRadious
        self.tintColor = color
    }
}


