////  ViewController.swift
//  10_UIAlertController
//
//  Created by An Nguyễn on 3/13/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.cyan
        let myButton:UIButton = UIButton(frame: CGRect(x: view.frame.width/2-100, y: view.frame.height/2-22.5, width: 200, height: 45))
        myButton.layer.masksToBounds = true
        myButton.layer.cornerRadius = 20
        myButton.layer.borderColor = UIColor.black.cgColor
        myButton.layer.borderWidth = 2
        myButton.setTitle("Alert", for: UIControlState.highlighted)
        myButton.setTitleColor(UIColor.black, for: UIControlState.highlighted)
        myButton.addTarget(self, action: #selector(onClickMyButton), for: UIControlEvents.touchUpInside)
        
        view.addSubview(myButton)
        
    }
    
    @objc func onClickMyButton(){
        let myAlert:UIAlertController = UIAlertController(title: "LOGIN!", message: "Hello IOS", preferredStyle: UIAlertControllerStyle.alert)
        let myOKAction:UIAlertAction = UIAlertAction(title: "OK", style: .default) { (Alert) in
            print("OK")
        }
        let myCancle:UIAlertAction = UIAlertAction(title: "Cancle", style: UIAlertActionStyle.cancel) { (Alert) in
            print("Cancle")
        }
        let myDestructive:UIAlertAction = UIAlertAction(title: "Default", style: UIAlertActionStyle.destructive) { (Alert) in
            print("Destructive")
        }
        myAlert.addAction(myDestructive)
        myAlert.addAction(myCancle)
        myAlert.addAction(myOKAction)
        
        present(myAlert, animated: true, completion: nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

