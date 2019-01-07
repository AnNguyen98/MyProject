//
//  ViewController.swift
//  UISwipeGestureP2
//
//  Created by An Nguyễn on 1/2/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgHinh: UIImageView!
    var goc  = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func SwipeGesture(_ sender: Any) {
        goc += 45
        print("Dang xoay")
        UIView.animate(withDuration: 0.5) {
            self.imgHinh.layer.transform = CATransform3DMakeRotation(CGFloat(Double.pi*Double(self.goc / 180)), 0, 0, 1)
        }
    }
    
}

