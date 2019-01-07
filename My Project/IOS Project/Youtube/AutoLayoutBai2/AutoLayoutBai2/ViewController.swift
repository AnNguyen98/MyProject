//
//  ViewController.swift
//  AutoLayoutBai2
//
//  Created by An Nguyễn on 2/4/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class BaseView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.layer.borderWidth = 2
        self.layer.borderColor = #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1)
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class ViewController: UIViewController {
    
    let viewDo:BaseView = {
        let v:BaseView = BaseView()
        v.backgroundColor = #colorLiteral(red: 1, green: 0.2756088437, blue: 0.3344119086, alpha: 1)
        return v
    }()
    let viewXanh:BaseView = {
        let v:BaseView = BaseView()
        v.backgroundColor = #colorLiteral(red: 0.2366302914, green: 1, blue: 0.2148602049, alpha: 1)
        return v
    }()
    let viewCam:BaseView = {
        let v:BaseView = BaseView()
        v.backgroundColor = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
        return v
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupView()
    }
    
    func setupView(){
        viewXanh.addSubview(viewCam)
        viewDo.addSubview(viewXanh)
        view.addSubview(viewDo)
        
        viewDo.widthAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/2).isActive = true
        viewDo.heightAnchor.constraint(equalTo: viewDo.widthAnchor).isActive = true
        viewDo.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        viewDo.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        viewXanh.centerYAnchor.constraint(equalTo: viewDo.centerYAnchor).isActive = true
        viewXanh.centerXAnchor.constraint(equalTo: viewDo.centerXAnchor).isActive = true
        viewXanh.widthAnchor.constraint(equalTo: viewDo.widthAnchor, multiplier: 1/2).isActive = true
        viewXanh.heightAnchor.constraint(equalTo: viewXanh.widthAnchor).isActive = true
        
        viewCam.centerYAnchor.constraint(equalTo: viewXanh.centerYAnchor).isActive = true
        viewCam.centerXAnchor.constraint(equalTo: viewXanh.centerXAnchor).isActive = true
        viewCam.widthAnchor.constraint(equalTo: viewXanh.widthAnchor, multiplier: 1/2).isActive = true
        viewCam.heightAnchor.constraint(equalTo: viewCam.widthAnchor).isActive = true
        
    }

    // thay doi khi xoay ngang
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        viewCam.widthAnchor.constraint(equalToConstant: 50).isActive = true
        viewCam.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

