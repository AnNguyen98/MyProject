//
//  ViewController.swift
//  CrollViewP2
//
//  Created by An Nguyễn on 1/22/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let myCrollView:UIScrollView = {
        let cr:UIScrollView = UIScrollView()
        cr.translatesAutoresizingMaskIntoConstraints = false
        return cr
    }()
    let viewDo:UIView = {
        let v:UIView = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.backgroundColor = #colorLiteral(red: 1, green: 0.2756088437, blue: 0.3344119086, alpha: 1)
        return v
    }()
    let viewVang:UIView = {
        let v:UIView = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.backgroundColor = #colorLiteral(red: 0.9994240403, green: 0.9855536819, blue: 0, alpha: 1)
        return v
    }()
    let viewXanh:UIView = {
        let v:UIView = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.backgroundColor = #colorLiteral(red: 0.2366302914, green: 1, blue: 0.2148602049, alpha: 1)
        return v
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        setupScrollView()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setupScrollView(){
        view.addSubview(myCrollView)
        
        myCrollView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        myCrollView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        myCrollView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        myCrollView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        myCrollView.addSubview(viewXanh)
        
        viewXanh.topAnchor.constraint(equalTo: myCrollView.topAnchor).isActive = true
        viewXanh.bottomAnchor.constraint(equalTo: myCrollView.bottomAnchor).isActive = true
        viewXanh.leftAnchor.constraint(equalTo: myCrollView.leftAnchor).isActive = true
        viewXanh.rightAnchor.constraint(equalTo: myCrollView.rightAnchor).isActive = true
        viewXanh.heightAnchor.constraint(equalToConstant: myCrollView.frame.size.height).isActive = true
        viewXanh.widthAnchor.constraint(equalToConstant: myCrollView.frame.size.width).isActive = true
        
        myCrollView.addSubview(viewVang)
        viewVang.topAnchor.constraint(equalTo: myCrollView.topAnchor).isActive = true
        viewVang.bottomAnchor.constraint(equalTo: myCrollView.bottomAnchor).isActive = true
        viewVang.leftAnchor.constraint(equalTo: myCrollView.leftAnchor).isActive = true
        viewVang.rightAnchor.constraint(equalTo: myCrollView.rightAnchor).isActive = true
        viewVang.heightAnchor.constraint(equalToConstant: myCrollView.frame.size.height).isActive = true
        viewVang.widthAnchor.constraint(equalToConstant: myCrollView.frame.size.width).isActive = true
        
        myCrollView.addSubview(viewDo)
        viewDo.topAnchor.constraint(equalTo: myCrollView.topAnchor).isActive = true
        viewDo.bottomAnchor.constraint(equalTo: myCrollView.bottomAnchor).isActive = true
        viewDo.leftAnchor.constraint(equalTo: myCrollView.leftAnchor).isActive = true
        viewDo.rightAnchor.constraint(equalTo: myCrollView.rightAnchor).isActive = true
        viewDo.heightAnchor.constraint(equalToConstant: myCrollView.frame.size.height).isActive = true
        viewDo.widthAnchor.constraint(equalToConstant: myCrollView.frame.size.width).isActive = true
    }

}

