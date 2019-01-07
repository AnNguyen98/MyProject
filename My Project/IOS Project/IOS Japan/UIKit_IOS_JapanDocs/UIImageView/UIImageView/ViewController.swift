//
//  ViewController.swift
//  UIImageView
//
//  Created by An Nguyễn on 3/13/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var myImageView:UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myImageView = UIImageView(frame: CGRect(x: self.view.frame.size.width/2-100, y: self.view.frame.height/2-100, width: 200, height: 200))
        let image = UIImage(named: "a")
        myImageView.image = image
        
        
        
        self.view.addSubview(myImageView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

