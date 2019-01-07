//
//  ViewController.swift
//  CHuChayByTimerLabel
//
//  Created by An Nguyễn on 1/23/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var i:Int = 1
    var timer:Timer!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        timer = Timer.init(timeInterval: 5, target: self, selector: #selector(Chay), userInfo: nil, repeats: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @objc func Chay(){
        (self.view.viewWithTag(i) as! UILabel).textColor = #colorLiteral(red: 1, green: 0.0258490509, blue: 0.2641437061, alpha: 1)
        
        i += 1
        if i > 8{
            i = 1
            timer.invalidate()
            timer = nil
        }
    }

}

