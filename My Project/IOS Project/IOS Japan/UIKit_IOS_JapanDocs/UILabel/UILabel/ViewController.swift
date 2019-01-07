//
//  ViewController.swift
//  UILabel
//
//  Created by An Nguyễn on 3/13/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let myLabel:UILabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        myLabel.backgroundColor = UIColor.brown
        myLabel.layer.masksToBounds = true
        myLabel.text = "Hello Swift!"
        myLabel.textColor = UIColor.red
        myLabel.textAlignment = .center
        myLabel.layer.cornerRadius = 20
        myLabel.shadowColor = UIColor.blue
        myLabel.layer.position = CGPoint(x: self.view.frame.width/2, y: self.view.bounds.height/2-25)
        self.view.backgroundColor = UIColor.green.withAlphaComponent(0.25)
        self.view.addSubview(myLabel)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

