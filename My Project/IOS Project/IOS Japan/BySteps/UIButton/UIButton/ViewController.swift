//
//  ViewController.swift
//  UIButton
//
//  Created by An Nguyễn on 1/13/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let button:UIButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupButton()
    }
    func setupButton(){
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Click!", for: .highlighted)
        button.setTitleColor(UIColor.red, for: .highlighted)
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 2
        button.layer.borderColor = #colorLiteral(red: 1, green: 0.0258490509, blue: 0.2641437061, alpha: 1)
        button.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).withAlphaComponent(0.3)
        button.backgroundColor = UIColor.clear
        button.tag = 1
        button.layer.masksToBounds = true
//        button.frame = CGRect(x: UIScreen.main.bounds.width/2-100, y: UIScreen.main.bounds.height/2-25, width: 200, height: 50)
 //       button.layer.position = CGPoint(x: <#T##CGFloat#>, y: <#T##CGFloat#>)
//        button.buttonType.rawValue
        button.addTarget(self, action: #selector(clickButton), for: .touchUpInside)
        
        self.view.addSubview(button)
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        button.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/3).isActive = true
        button.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/10).isActive = true
        
        
    }
    
    @objc func clickButton(){
        print("tag = \(button.tag)")
        print("currentTitle = \(String(describing: button.currentTitle!))")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

