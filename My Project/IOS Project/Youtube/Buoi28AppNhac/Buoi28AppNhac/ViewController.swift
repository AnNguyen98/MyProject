//
//  ViewController.swift
//  Buoi28AppNhac
//
//  Created by An Nguyễn on 3/25/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgIcon: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

//    override func viewWillAppear(_ animated: Bool) {
//        UIView.transition(with: imgIcon, duration: 1, options: UIViewAnimationOptions.transitionFlipFromBottom, animations: {
//
//        }) { (true) in
//
//        }
//    }
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.transition(with: imgIcon, duration: 0.5, options: UIViewAnimationOptions.transitionFlipFromBottom, animations: {
            
        }) { (true) in
            UIView.transition(with: self.imgIcon, duration: 0.5, options: UIViewAnimationOptions.transitionFlipFromBottom, animations: nil, completion: { (true) in
                let str = self.storyboard?.instantiateViewController(withIdentifier: "main")
                self.present(str!, animated: true, completion: nil)
            })
        }
    }

}

