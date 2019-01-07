//
//  ViewController.swift
//  GameChimBayBuoi23
//
//  Created by An Nguyễn on 3/22/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgBackgroundGame: UIImageView!
    @IBOutlet weak var imageBackGroundWidth: NSLayoutConstraint!
    @IBOutlet weak var contrantLeftImage: NSLayoutConstraint!
    @IBOutlet weak var imgBirdCenterY: NSLayoutConstraint!
    @IBOutlet weak var imageBird: UIImageView!
    @IBOutlet weak var imagePlane: UIImageView!
    @IBOutlet weak var imageRightPlaneY: NSLayoutConstraint!
    @IBOutlet weak var imagePlaneTop: NSLayoutConstraint!
    
    var timer:Timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageBackGroundWidth.constant = 8 * view.frame.width
        timer = Timer(timeInterval: 0.01, target: self, selector: #selector(ChayManHinh), userInfo: nil, repeats: true)
        
    }
    
    @objc func ChayManHinh(){
        contrantLeftImage.constant -= 10
        if contrantLeftImage.constant <= -7 * view.frame.width{
            contrantLeftImage.constant = 0
        }
        self.view.layoutSubviews()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

