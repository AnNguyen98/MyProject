//
//  ViewController.swift
//  IOSSwiftSliderShowImage
//
//  Created by An Nguyễn on 4/12/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit
import ImageSlideshow
import Vertigo

class ViewController: UIViewController {
    
    let sliderShow:ImageSlideshow = ImageSlideshow()
    let arrayImageSource:Array<ImageSource> = [ImageSource(image: #imageLiteral(resourceName: "hinhNen1")),ImageSource(image: #imageLiteral(resourceName: "hinhNen2")),ImageSource(image: #imageLiteral(resourceName: "hinhNen3"))]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        sliderShow.frame = view.frame
        
        sliderShow.setImageInputs(arrayImageSource)
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(Tap))
        let pinhGestureRecognizer = UIPinchGestureRecognizer(target: self, action: #selector(Pinh))
        
        sliderShow.pageControl.currentPage = 1
        sliderShow.pageControl.pageIndicatorTintColor = UIColor.red
        sliderShow.pageControl.currentPageIndicatorTintColor = UIColor.blue
        sliderShow.pageControl.numberOfPages = arrayImageSource.count
        
        sliderShow.pageControlPosition = .insideScrollView
        sliderShow.isUserInteractionEnabled = true
        sliderShow.addGestureRecognizer(gestureRecognizer)
        sliderShow.addGestureRecognizer(pinhGestureRecognizer)
        sliderShow.activityIndicator = DefaultActivityIndicator()
        self.view.addSubview(sliderShow)
        
       
    }
    @objc func Tap(){
        sliderShow.presentFullScreenController(from: self)
    }
    @objc func Pinh(){
        print("Hello")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

