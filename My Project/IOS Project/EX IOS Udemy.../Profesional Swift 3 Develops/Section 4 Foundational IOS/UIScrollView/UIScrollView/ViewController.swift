//
//  ViewController.swift
//  UIScrollView
//
//  Created by An Nguyễn on 2/27/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var arrImage:[UIImageView] = [UIImageView]()
    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        scrollView.backgroundColor = UIColor.purple

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillDisappear(_ animated: Bool) {
        
        
        for x in 0...2{
            let image:UIImage = UIImage(named: "icon\(x)")!
            let imageView:UIImageView = UIImageView(image: image)
            arrImage.append(imageView)
            
            var centerX = 0.0
            
            
            scrollView.addSubview(arrImage[x])
            
        }
        
    }

}

