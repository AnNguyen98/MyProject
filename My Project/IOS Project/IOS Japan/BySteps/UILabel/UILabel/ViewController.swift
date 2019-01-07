//
//  ViewController.swift
//  UILabel
//
//  Created by An Nguyễn on 1/13/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let label:UILabel = UILabel(frame: CGRect(x: UIScreen.main.bounds.width/2-100, y: UIScreen.main.bounds.height/2-25 , width: 200, height: 50))

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setLabel()
    }
    
    func setLabel(){
        label.text = "Hello World!!"
        label.tag = 1
        label.textColor = #colorLiteral(red: 1, green: 0.0258490509, blue: 0.2641437061, alpha: 1)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.shadowColor = #colorLiteral(red: 0.2366302914, green: 1, blue: 0.2148602049, alpha: 1)
        label.isHighlighted  = true
        label.layer.cornerRadius = 10
        label.layer.borderColor = #colorLiteral(red: 1, green: 0.0258490509, blue: 0.2641437061, alpha: 1)
        label.layer.borderWidth = 2
        label.backgroundColor = #colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1).withAlphaComponent(0.3)
        label.clipsToBounds = true
        label.layer.masksToBounds = true
        
        
        self.view.addSubview(label)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

