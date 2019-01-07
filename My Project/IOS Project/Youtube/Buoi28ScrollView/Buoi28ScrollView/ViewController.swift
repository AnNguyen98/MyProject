//
//  ViewController.swift
//  Buoi28ScrollView
//
//  Created by An Nguyễn on 3/29/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIScrollViewDelegate {

    @IBOutlet weak var scrollViewMe: UIScrollView!
    @IBOutlet weak var pageControllMe: UIPageControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        scrollViewMe.delegate = self
        
    }
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let sizePage = UIScreen.main.bounds.width
        //view.frame.width
        let contentX = scrollViewMe.contentOffset.x
        let numberPage:Int = Int(contentX/sizePage)
        pageControllMe.currentPage = numberPage
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

