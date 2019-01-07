//
//  ViewController.swift
//  LoginFacebook
//
//  Created by An Nguyễn on 1/7/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit
import FBSDKLoginKit
import FBSDKCoreKit

class ViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    let facebookSDKLoginManager:FBSDKLoginManager = FBSDKLoginManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        setupButton()
        //loginButton.center = view.center
        
    }
    @IBAction func LoginButton(_ sender: Any) {
        loginSetup()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func loginSetup(){
        facebookSDKLoginManager.logIn(withReadPermissions: ["email"], from: self) { (result, err) in
            if err == nil {
                print("Dang nhap thanh cong!")
                let fbLoginResult:FBSDKLoginManagerLoginResult = result!
                if fbLoginResult.grantedPermissions != nil{
                    self.getData()
                }
            }
            else{
                print("Dang nhap that bai!")
            }
        }
    }
    func getData(){
        if FBSDKAccessToken.current() != nil{
            FBSDKGraphRequest(graphPath: "me", parameters: ["fields":"email,name,id,"]).start(completionHandler: { (connect, result , err) in
                if err == nil{
                    let dict = result as! Dictionary<String,Any>
                    print("id: \(dict)")
                }
            })
        }
    }
    func setupButton(){
        loginButton.layer.cornerRadius = 10
        loginButton.layer.borderColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        loginButton.layer.borderWidth = 2
        loginButton.alpha = 0.3
        loginButton.clipsToBounds = true
    }


}

