//
//  ViewController.swift
//  AutoLayoutBaiTap
//
//  Created by An Nguyễn on 2/4/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class BaseView: UIView {
    func setup(){
        self.layer.borderColor = #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1)
        self.layer.borderWidth = 2
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class xanhView: BaseView {
    override func setup() {
        super.setup()
        self.backgroundColor = #colorLiteral(red: 0.2366302914, green: 1, blue: 0.2148602049, alpha: 1)
    }
}

class ViewController: BaseViewController {
    
    override func setup() {
        super.setup()
        setupView()
    }
 
    //co the bo
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view, typically from a nib.
//    }
    func setupView(){
        let viewDo:BaseView = {
            let v:BaseView = BaseView()
            v.backgroundColor = #colorLiteral(red: 1, green: 0.0258490509, blue: 0.2641437061, alpha: 1)
            return v
        }()
        let viewXanh:xanhView = xanhView()
        let viewCam:BaseView = BaseView()
    
        viewCam.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        
        view.addSubview(viewDo)
        view.addSubview(viewXanh)
        view.addSubview(viewCam)
        
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0][v1]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":viewDo,"v1":viewXanh]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":viewDo]))
        viewDo.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/2).isActive = true
        viewXanh.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        viewXanh.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/2).isActive = true
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0][v1]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":viewXanh,"v1":viewCam]))
        viewCam.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/2).isActive = true
        viewCam.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}



