//
//  ViewController.swift
//  UIAlertView
//
//  Created by An Nguyễn on 3/18/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //view.backgroundColor = UIColor.blue.withAlphaComponent(0.1)
        
       /* let showAlertButton:UIButton = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        showAlertButton.addTarget(self, action: #selector(showAlert), for: .touchUpInside)
        showAlertButton.backgroundColor = UIColor.blue
        
        view.addSubview(showAlertButton)
    }
    
    @objc func showAlert(){
        let alert = UIAlertController(title: "Hello IOS!", message: "Do you like it?", preferredStyle: .alert)
        let yesAction = UIAlertAction(title: "OK", style: .destructive) { (ok) in
            let alert1 = UIAlertController(title: "", message: "You can do it!", preferredStyle: .alert)
            self.present(alert1, animated: true, completion: nil)
        }
        let noAction = UIAlertAction(title: "No", style: .cancel, handler: nil)
        
        alert.addAction(yesAction)
        alert.addAction(noAction)
        present(alert, animated: true, completion: nil)
     */
        
        let buttonLogin:UIButton = UIButton(frame: CGRect(x: view.bounds.width/2-100, y: view.bounds.height/2-20, width: 200, height: 40))
        buttonLogin.backgroundColor = UIColor.brown
        buttonLogin.addTarget(self, action: #selector(Login), for: .touchUpInside)
        
        view.addSubview(buttonLogin)
        
    }
    @objc func Login(){
        let user = "theannguyen98@gmail.com"
        let pass = "theank16@"
        var user1:String!
        var pass1:String!
        
        let alertLogin = UIAlertController(title: "Login", message: "Please login!", preferredStyle: .alert)
        alertLogin.addTextField { (textField:UITextField) in
            textField.keyboardType = .emailAddress
            textField.placeholder = "userName"
            user1 = textField.text!
        }
        alertLogin.addTextField { (passWord:UITextField) in
            passWord.placeholder = "passWord"
            passWord.isSecureTextEntry = true
            pass1 = passWord.text!
        }
        let login = UIAlertAction(title: "Login", style: .destructive) { (login) in
            if user == user1 && pass == pass1 {
                let alertSuccess = UIAlertController(title: "", message: "Login Successfully", preferredStyle: .alert)
                self.present(alertSuccess, animated: true, completion: nil)
            }else{
                let alertSuccess = UIAlertController(title: "", message: "Login Fail", preferredStyle: .alert)
                self.present(alertSuccess, animated: true, completion: nil)
            }
        }
        let back = UIAlertAction(title: "Back", style: .cancel, handler: nil)
        
        alertLogin.addAction(login)
        alertLogin.addAction(back)
        self.present(alertLogin, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

