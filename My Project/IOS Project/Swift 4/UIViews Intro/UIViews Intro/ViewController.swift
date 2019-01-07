//
//  ViewController.swift
//  UIViews Intro
//
//  Created by Owl on 2017-08-01.
//  Copyright © 2017 Owl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var innerView: UIView!
    @IBOutlet weak var middleView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        innerView.backgroundColor = UIColor.black
        
        let outerWidth = self.view.frame.width
        
        //middleView.frame = CGRect(x: 100, y: 100, width: outerWidth, height: outerWidth)
        middleView.bounds = CGRect(x: 0, y: -outerWidth/2, width: outerWidth, height: outerWidth)
        
        //print(middleView.subviews.count)
        let newView1 = UIView(frame: CGRect(x: 5, y: 5, width: innerView.frame.width - 10, height: innerView.frame.width - 10))
        newView1.backgroundColor = UIColor.yellow
        innerView.addSubview(newView1)
        
        let newView2 = UIView(frame: CGRect(x: 10, y: 10, width: innerView.frame.width - 20, height: innerView.frame.width - 20))
        newView2.backgroundColor = UIColor.green
        innerView.addSubview(newView2)
        
        innerView.bringSubview(toFront: newView1)
        innerView.sendSubview(toBack: newView1)
        newView1.removeFromSuperview()
        
        /*newView2.transform = CGAffineTransform(translationX: 100, y: 100)
        innerView.clipsToBounds = true*/
        innerView.transform = CGAffineTransform(rotationAngle: CGFloat(M_PI/4))
        newView2.transform = CGAffineTransform(rotationAngle: CGFloat(M_PI/4))
        
        self.view.backgroundColor = UIColor.red
        let tapRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.tapBackground(_:)))
        self.view.addGestureRecognizer(tapRecognizer)
        
    }
    
    @objc func tapBackground(_ sender: UITapGestureRecognizer) {
        if self.view.backgroundColor == UIColor.red {
            self.view.backgroundColor = UIColor.white
        } else if self.view.backgroundColor == UIColor.white {
            self.view.backgroundColor = UIColor.red
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

