//
//De keo cai gi do


//  ViewController.swift
//  UIPanGesture
//
//  Created by An Nguyễn on 1/2/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var PanGesture: UIPanGestureRecognizer!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        PanGesture.minimumNumberOfTouches = 2
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func PanGesture(_ sender: Any) {
        print("Dang vuot")
    }
    
}

