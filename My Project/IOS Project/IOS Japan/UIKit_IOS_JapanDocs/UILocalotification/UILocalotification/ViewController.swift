//
//  ViewController.swift
//  UILocalotification
//
//  Created by An Nguyễn on 3/13/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        let setting = UIUserNotificationSettings(types: [.sound,.alert], categories: nil)
        UIApplication.shared.registerForRemoteNotifications()
        
        let myNotificationButton:UIButton = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 80))
        myNotificationButton.backgroundColor = UIColor.orange
        myNotificationButton.layer.masksToBounds = true
        myNotificationButton.setTitle("NotificationButton", for: .highlighted)
        myNotificationButton.layer.cornerRadius = 20
        myNotificationButton.frame.origin = CGPoint(x: self.view.bounds.width/2, y: 400)
        myNotificationButton.addTarget(self, action: #selector(onClickButton), for: .touchUpInside)
        myNotificationButton.tag = 1
        
        
        myNotificationFieButton:UIButton
        
        view.addSubview(myNotificationButton)
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

