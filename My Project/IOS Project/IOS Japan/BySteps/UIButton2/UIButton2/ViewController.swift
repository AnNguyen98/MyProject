//
//  ViewController.swift
//  UIButton2
//
//  Created by An Nguyễn on 1/13/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var myInforDarkButton:UIButton!
    var myInforLightButton:UIButton!
    var myAddButton:UIButton!
    var myDitailButton:UIButton!
    var mySystemButton:UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupButton()
    }
    
    func setupButton(){
     //   myInforDarkButton.translatesAutoresizingMaskIntoConstraints = false
        
        myInforDarkButton = UIButton(type: UIButtonType.infoDark)
        myAddButton = UIButton(type: UIButtonType.contactAdd)
        myDitailButton = UIButton(type: UIButtonType.detailDisclosure)
        mySystemButton = UIButton(type: UIButtonType.system)
        myInforLightButton = UIButton(type: UIButtonType.infoLight)
        
        myInforDarkButton.layer.position = CGPoint(x: view.frame.width/2, y: 100)
        myInforLightButton.layer.position = CGPoint(x: view.frame.width/2, y: 150)
        myAddButton.layer.position = CGPoint(x: view.frame.width/2, y: 200)
        mySystemButton.layer.position = CGPoint(x: view.frame.width/2, y: 250)
        myDitailButton.layer.position = CGPoint(x: view.frame.width/2, y: 300)
        
        mySystemButton.setTitle("SystemButton", for: .normal)
        
        myInforDarkButton.addTarget(self, action: #selector(clickButton), for: .touchUpInside)
        myInforLightButton.addTarget(self, action: #selector(clickButton), for: .touchUpInside)
        myAddButton.addTarget(self, action: #selector(clickButton), for: .touchUpInside)
        mySystemButton.addTarget(self, action: #selector(clickButton), for: .touchUpInside)
        myDitailButton.addTarget(self, action: #selector(clickButton), for: .touchUpInside)
        
        myInforDarkButton.tag = 1
        myInforLightButton.tag = 2
        myAddButton.tag = 3
        mySystemButton.tag = 4
        myDitailButton.tag = 5
        
        
        view.addSubview(myInforDarkButton)
        view.addSubview(myInforLightButton)
        view.addSubview(mySystemButton)
        view.addSubview(myDitailButton)
        view.addSubview(myAddButton)
        
        
//        myInforDarkButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        myInforDarkButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
//        myInforDarkButton.widthAnchor.constraint(equalToConstant: 30)
//        myInforDarkButton.heightAnchor.constraint(equalToConstant: 30)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @objc func clickButton(sender:UIButton){
        print("tag :         \(sender.tag) ")
        print("currentTitle : \(sender.currentTitle))")
    }


}

