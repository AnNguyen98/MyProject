//
//  ViewController.swift
//  UIButton
//
//  Created by An Nguyễn on 3/13/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private var myButton:UIButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myButton.backgroundColor = UIColor.blue
        myButton.layer.masksToBounds = true
        myButton.frame = CGRect(x: self.view.frame.size.width/2-100, y: self.view.frame.size.height/2-20, width: 200, height: 40)
        //myButton.layer.position = CGPoint(x: 100, y: self.view.frame.size.height/2-20)
        myButton.layer.cornerRadius = 20
        myButton.layer.borderColor = UIColor.brown.cgColor
        myButton.layer.borderWidth = 1
        myButton.tag = 1
        myButton.setTitle("myButton", for: UIControlState.highlighted)
        myButton.setTitleColor(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1), for: UIControlState.highlighted)
        
        myButton.addTarget(self, action: #selector(onClickMyButton), for: UIControlEvents.touchUpInside)
        
        self.view.backgroundColor = UIColor.red.withAlphaComponent(0.1)
        self.view.addSubview(myButton)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func onClickMyButton(sender:UIButton){
        print("onClickMyButton")
        print("sender.tag : \(sender.tag)")
        print("sender.currentTitle :\(String(describing: sender.currentTitle!))")
    }


}

