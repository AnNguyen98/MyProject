//
//  ViewController.swift
//  WorkingWithUIScrollView
//
//  Created by An Nguyễn on 3/21/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    var images:Array<UIImageView> = Array<UIImageView>()

    var contentSize:CGFloat = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewDidAppear(_ animated: Bool) {
        
        for i in 0...2{
            let image:UIImage = UIImage(named: "icon\(i)")!
            let imageView = UIImageView(image: image)
            images.append(imageView)
            let newX = scrollView.frame.midX  + scrollView.frame.width * CGFloat(i)
            contentSize += newX
            scrollView.addSubview(imageView)
            imageView.frame = CGRect(x: newX - 75 , y: scrollView.frame.midY - 75, width: 150, height: 150)
        }
        scrollView.contentSize = CGSize(width: contentSize, height: scrollView.frame.height)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

