//
//  ViewController.swift
//  ContainerView
//
//  Created by An Nguyễn on 3/29/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

class MH2:UIViewController{
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        
    }
    override func viewWillAppear(_ animated: Bool) {
        label.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        UIView.animate(withDuration: 0.5) {
            self.label.transform = CGAffineTransform(scaleX: 1, y: 1)
        }
    }
}

