//
//  ViewController.swift
//  UILabels Intro
//
//  Created by Owl on 2017-08-04.
//  Copyright © 2017 Owl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        label.backgroundColor = UIColor.lightGray
        label.text = "Mammoth Interactive is the best company ever."
        
        let newLabelFrame = CGRect(x: 10, y: 450, width: 300, height: 100)
        let newLabel : UILabel = UILabel(frame: newLabelFrame)
        newLabel.backgroundColor = UIColor.blue
        newLabel.numberOfLines = 3
        let newLabelString = "I hope you enjoyed our tutorial on UILabels"
        newLabel.text = newLabelString
        newLabel.font = UIFont(name: "Verdana", size: 20)
        newLabel.textColor = UIColor.white
        newLabel.textAlignment = .center
        
        self.view.addSubview(newLabel)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

