//
//  ViewController.swift
//  UIButtons Intro
//
//  Created by Owl on 2017-08-04.
//  Copyright © 2017 Owl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var middleButton: UIButton!
    
    var newLabel : UILabel!
    var newButton : UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button.backgroundColor = UIColor.red
        button.setTitle("Hello", for: UIControlState.normal)
        middleButton.setTitle("Goodbye", for: UIControlState.normal)
        
        label1.backgroundColor = UIColor.white
        
        newLabel = UILabel(frame: CGRect(x: 20, y: 360, width: 280, height: 40))
        newLabel.backgroundColor = UIColor.white
        newLabel.text = "Here is a new label"
        newLabel.textAlignment = .center
        
        newButton = UIButton(frame: CGRect(x: 20, y: 300, width: 280, height: 40))
        newButton.setTitle("Spawn label", for: .normal)
        //newButton.backgroundColor = UIColor.green
        newButton.setBackgroundImage(#imageLiteral(resourceName: "colors"), for: .normal)
        newButton.addTarget(self, action: #selector(pressSpawnedButton), for: .touchUpInside)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func pressButton(_ sender: UIButton) {
        /*if label1.text == "hello" {
            label1.text = "goodbye"
        } else {
            label1.text = "hello"
        }*/
        /*if !self.view.subviews.contains(newLabel) {
            self.view.addSubview(newLabel)
        }*/
        
        label1.text = sender.currentTitle
        if self.view.backgroundColor == UIColor.black {
            self.view.backgroundColor = UIColor.white
        } else {
            self.view.backgroundColor = UIColor.black
        }
    }
    
    @IBAction func pressButton2(_ sender: UIButton) {
        if !self.view.subviews.contains(newButton) {
            self.view.addSubview(newButton)
        }
    }
    
    @objc func pressSpawnedButton(_ sender: UIButton) {
        if !self.view.subviews.contains(newLabel) {
            self.view.addSubview(newLabel)
        }
    }
    
}

