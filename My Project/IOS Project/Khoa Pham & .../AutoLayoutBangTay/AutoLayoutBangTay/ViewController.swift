//
//  ViewController.swift
//  AutoLayoutBangTay
//
//  Created by An Nguyễn on 1/9/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblFb: UILabel!
    @IBOutlet weak var txtFieldUsername: UITextField!
    @IBOutlet weak var txtFieldPassWord: UITextField!
    @IBOutlet weak var viewLogin: UIView!
    @IBOutlet weak var btnRegister: UIButton!
    @IBOutlet weak var btnLogin: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        viewLogin.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).withAlphaComponent(0.3)
        lblFb.clipsToBounds = true
        viewLogin.setUpView(colorVien: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), widthVien: 2, doBoGoc: 10)
        lblFb.setUpView(colorVien: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), widthVien: 2, doBoGoc: 10)
//        btnRegister.setUpView(colorVien: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), widthVien: 2, doBoGoc: 10)
//        btnLogin.setUpView(colorVien: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), widthVien: 2, doBoGoc: 10)
        btnRegister.ghostButton()
        btnLogin.ghostButton()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension UIView{
    func setUpView(colorVien:UIColor,widthVien:CGFloat, doBoGoc:CGFloat){
        self.layer.cornerRadius = doBoGoc
        self.layer.borderColor = colorVien.cgColor
        self.layer.borderWidth = 2
        self.backgroundColor = UIColor.clear
    }
}
extension UIButton{
    func ghostButton(color:UIColor,borderWidth:CGFloat ,borderColor:UIColor ){
        self.layer.borderWidth = borderWidth
        self.layer.borderColor = borderColor.cgColor
        self.tintColor = color
        self.layer.cornerRadius = borderWidth
    }
    func ghostButton(){
        self.layer.borderWidth = 2
        self.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0).cgColor
        self.tintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.layer.cornerRadius = 10
        self.backgroundColor =  UIColor.clear
    }
}

