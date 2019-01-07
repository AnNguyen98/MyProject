//
//  ViewController.swift
//  IOS_15_1_2_AutoLayoutBangTay
//
//  Created by An Nguyễn on 2/21/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Login: UIView!
    
    @IBOutlet weak var txtUserName: UITextField!
    @IBOutlet weak var txtPassWord: UITextField!
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var btnRegister: UIButton!
    @IBOutlet weak var BaiTap1: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        setup(view: Login, cornerRadious: 10, borderWidth: 1, borderColor: #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1))
//        setup(view: txtPassWord, cornerRadious: 10, borderWidth: 1, borderColor: #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1))
//        setup(view: txtUserName, cornerRadious: 10, borderWidth: 1, borderColor: #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1))
//        setup(view: btnLogin, cornerRadious: 10, borderWidth: 1, borderColor: #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1))
//        setup(view: btnRegister, cornerRadious: 10, borderWidth: 1, borderColor: #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1))
        
//        Login.setupView(borderWidth: 2, borderColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), cornerRadius: 10)
//        txtUserName.setupView(borderWidth: 2, borderColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), cornerRadius: 10)
//        txtPassWord.setupView(borderWidth: 2, borderColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), cornerRadius: 10)
//        btnLogin.setupView(borderWidth: 2, borderColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), cornerRadius: 10)
//        btnRegister.setupView(borderWidth: 2, borderColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), cornerRadius: 10)
//
//        Login.backgroundColor = #colorLiteral(red: 0.1215686277, green: 0.1294117719, blue: 0.1411764771, alpha: 1).withAlphaComponent(0.25)
//
//        btnRegister.ghostButton()
//        btnLogin.ghostButton()

        baiTap1()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    func setup(view:UIView,cornerRadious:CGFloat,borderWidth:CGFloat,borderColor:CGColor){
        view.layer.borderColor = borderColor
        view.layer.borderWidth = borderWidth
        view.layer.cornerRadius = cornerRadious
    }
    func baiTap1(){
        BaiTap1.clipsToBounds = true
        BaiTap1.setupView(borderWidth: 2, borderColor: #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1), cornerRadius: BaiTap1.frame.size.width/2)
    }
}
extension UIView{
    func setupView(borderWidth:CGFloat,borderColor:CGColor,cornerRadius:CGFloat){
        self.layer.borderColor = borderColor
        self.layer.borderWidth = borderWidth
        self.layer.cornerRadius = cornerRadius
    }
}
extension UIButton{
    func ghostButton(){
        self.backgroundColor = UIColor.clear
        self.titleLabel?.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.layer.borderWidth = 2
        self.layer.cornerRadius = 10
        self.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
    func ghostButton(cornerRadius:CGFloat,borderWidth:CGFloat,borderColor:CGColor,textColor:UIColor){
        self.layer.cornerRadius = cornerRadius
        self.layer.borderWidth = borderWidth
        self.titleLabel?.textColor = textColor
        self.layer.borderColor = borderColor
        self.backgroundColor = UIColor.clear
    }
}


