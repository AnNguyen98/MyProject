//
//  ViewController.swift
//  UIFont
//
//  Created by An Nguyễn on 3/13/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let mySmallLable:UILabel = UILabel()
        mySmallLable.font = UIFont.systemFont(ofSize: UIFont.smallSystemFontSize)
        mySmallLable.text = "smallSystemFontSize"
        mySmallLable.frame = CGRect(x: 25, y: 0, width: 300, height: 150)
        self.view.addSubview(mySmallLable)
        
        let myNormalLabel:UILabel = UILabel()
        myNormalLabel.font = UIFont.systemFont(ofSize: UIFont.systemFontSize)
        myNormalLabel.text = "systemFontSize"
        myNormalLabel.frame = CGRect(x: 25, y: 30, width: 200, height: 150)
        self.view.addSubview(myNormalLabel)
        
        let myButtonLabel:UILabel = UILabel()
        myButtonLabel.font = UIFont.systemFont(ofSize: UIFont.buttonFontSize)
        myButtonLabel.text = "buttonFontSize"
        myButtonLabel.frame = CGRect(x: 25, y: 60, width: 300, height: 150)
        self.view.addSubview(myButtonLabel)
        
        let myCustomLabel:UILabel = UILabel()
        myCustomLabel.font = UIFont.systemFont(ofSize: 20)
        myCustomLabel.frame = CGRect(x: 25, y: 90, width: 300, height: 150)
        self.view.addSubview(myCustomLabel)
        
        let myItalicLabel:UILabel = UILabel()
        myItalicLabel.font = UIFont.italicSystemFont(ofSize: UIFont.labelFontSize)
        myItalicLabel.text = "italicSystemFont"
        myItalicLabel.frame = CGRect(x: 25, y: 150, width: 300, height: 150)
        self.view.addSubview(myItalicLabel)
        
        let myBoldLabel:UILabel = UILabel()
        myBoldLabel.font = UIFont.boldSystemFont(ofSize: UIFont.labelFontSize)
        myBoldLabel.text = "boldSystemFont"
        myBoldLabel.frame = CGRect(x: 25, y: 180, width: 300, height: 150)
        self.view.addSubview(myBoldLabel)
        
        let myAlialLabel:UILabel = UILabel()
        myAlialLabel.font = UIFont(name: "AlialHebew", size: UIFont.labelFontSize)
        myAlialLabel.text = "AlialHebew"
        myAlialLabel.frame = CGRect(x: 25, y: 230, width: 300, height: 150)
        self.view.addSubview(myAlialLabel)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

