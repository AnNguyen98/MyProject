//
//  ViewController.swift
//  UISwipeGesture
//
//  Created by An Nguyễn on 1/2/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var SwipeGesture: UISwipeGestureRecognizer!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        SwipeGesture.numberOfTouchesRequired = 2
        SwipeGesture.direction = .left
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func SwipeGesture(_ sender: UISwipeGestureRecognizer) {
        print("Dang vuot")
    }
    

}

