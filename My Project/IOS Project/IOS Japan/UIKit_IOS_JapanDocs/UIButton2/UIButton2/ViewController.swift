//
//  ViewController.swift
//  UIButton2
//
//  Created by An Nguyễn on 3/13/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private var myInfoDarkButton:UIButton!
    private var myInfoLightButton:UIButton!
    private var myAddButton:UIButton!
    private var myDetailButton:UIButton!
    private var mySystemButton:UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myInfoDarkButton = UIButton(type: UIButtonType.infoDark)
        myInfoLightButton = UIButton(type: UIButtonType.infoLight)
        myAddButton = UIButton(type: UIButtonType.contactAdd)
        myDetailButton  = UIButton(type: UIButtonType.detailDisclosure)
        mySystemButton = UIButton(type: UIButtonType.system)
        
        myInfoDarkButton.layer.position = CGPoint(x: self.view.frame.size.width/2, y: 50)
        myInfoLightButton.layer.position = CGPoint(x: self.view.frame.size.width/2, y: 100)
        myAddButton.layer.position = CGPoint(x: self.view.frame.size.width/2, y: 150)
        myDetailButton.layer.position = CGPoint(x: self.view.frame.size.width/2, y: 200)
        
        mySystemButton.frame = CGRect(x: 0, y: 0, width: 200, height: 50)
        mySystemButton.layer.position = CGPoint(x: self.view.frame.size.width/2, y: 250)
        
        mySystemButton.setTitle("mySystemButton", for: UIControlState.highlighted)
        mySystemButton.setTitleColor(UIColor.red, for: UIControlState.highlighted)
        mySystemButton.backgroundColor = UIColor.blue
        
        myInfoDarkButton.tag = 1
        myInfoLightButton.tag = 2
        myAddButton.tag = 3
        myDetailButton.tag = 4
        mySystemButton.tag = 5
        
        myInfoDarkButton.addTarget(self, action: #selector(onClickMyButton), for: UIControlEvents.touchUpInside)
        myInfoLightButton.addTarget(self, action: #selector(onClickMyButton), for: UIControlEvents.touchUpInside)
        myAddButton.addTarget(self, action: #selector(onClickMyButton), for: UIControlEvents.touchUpInside)
        myDetailButton.addTarget(self, action: #selector(onClickMyButton), for: UIControlEvents.touchUpInside)
        mySystemButton.addTarget(self, action: #selector(onClickMyButton), for: UIControlEvents.touchUpInside)
        
        
        
        self.view.addSubview(myInfoDarkButton)
        self.view.addSubview(myInfoLightButton)
        self.view.addSubview(myAddButton)
        self.view.addSubview(myDetailButton)
        self.view.addSubview(mySystemButton)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func onClickMyButton(sender:UIButton){
        print("onClickMyButton")
        print("sender.tag = \(sender.tag)")
        print("sender.currentTitle = \(sender.currentTitle!)")
    }


}

