//
//  ViewController.swift
//  AutoLayoutDoiTuongBangCodeFull
//
//  Created by An Nguyễn on 1/12/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let viewDo:UIView = {
        let v:UIView = UIView()
        v.backgroundColor = #colorLiteral(red: 1, green: 0.0258490509, blue: 0.2641437061, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let viewXanh:UIView = {
        let v:UIView = UIView()
        v.backgroundColor = #colorLiteral(red: 0.2366302914, green: 1, blue: 0.2148602049, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let viewVang:UIView = {
        let v:UIView = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let viewTim:UIView = {
        let v:UIView = UIView()
        v.backgroundColor = #colorLiteral(red: 0.8174988159, green: 0.3937927232, blue: 1, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupViewDo()
        
    }

    func setupViewDo(){
//        let top  = NSLayoutConstraint(item: viewDo, attribute: .top, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: .top, multiplier: 1, constant: 0)
//        let left = NSLayoutConstraint(item: viewDo, attribute: .left, relatedBy: .equal, toItem: view, attribute: .left, multiplier: 1, constant: 0)
//        let width = NSLayoutConstraint(item: viewDo, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 1/2, constant: 0)
//        let height = NSLayoutConstraint(item: viewDo, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 1/2, constant: 0)
//
//        self.view.addSubview(viewDo)
//        view.addConstraints([top,left,width,height])
        
        
//        view.addSubview(viewDo)
//        viewDo.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
//        viewDo.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
//        viewDo.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/2).isActive = true
//        viewDo.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/2).isActive = true
        
        view.addSubview(viewDo)
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-20-[v0]-0-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":viewDo]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-0-[v0]-0-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":viewDo]))
    }
    func setupViewXanh(){
//        let top  = NSLayoutConstraint(item: viewXanh, attribute: .top, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: .top, multiplier: 1, constant: 0)
//        let right = NSLayoutConstraint(item: viewXanh, attribute: .right, relatedBy: .equal, toItem: view, attribute: .right, multiplier: 1, constant: 0)
//        let width = NSLayoutConstraint(item: viewXanh, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 1/2, constant: 0)
//        let height = NSLayoutConstraint(item: viewXanh, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 1/2, constant: 0)
//        self.view.addSubview(viewXanh)
//        view.addConstraints([top,right,width,height])
        
        
//        view.addSubview(viewXanh)
//        viewXanh.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
//        viewXanh.leftAnchor.constraint(equalTo: viewDo.rightAnchor).isActive = true
//        viewXanh.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/2).isActive = true
//        viewXanh.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/2).isActive = true
    }
    func setupViewVang(){
//        let top  = NSLayoutConstraint(item: viewVang, attribute: .top, relatedBy: NSLayoutRelation.equal, toItem: viewDo, attribute: .bottom, multiplier: 1, constant: 0)
//        let left = NSLayoutConstraint(item: viewVang, attribute: .left, relatedBy: .equal, toItem: view, attribute: .left, multiplier: 1, constant: 0)
//        let width = NSLayoutConstraint(item: viewVang, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 1/2, constant: 0)
//        let height = NSLayoutConstraint(item: viewVang, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 1/2, constant: 0)
//
//        self.view.addSubview(viewVang)
//        view.addConstraints([top,left,width,height])
        
        
        
//        view.addSubview(viewVang)
//        viewVang.topAnchor.constraint(equalTo: viewDo.bottomAnchor).isActive = true
//        viewVang.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
//        viewVang.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/2).isActive = true
//        viewVang.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/2).isActive = true
    }
    func setupViewTim(){
//        let top  = NSLayoutConstraint(item: viewTim, attribute: .top, relatedBy: NSLayoutRelation.equal, toItem: viewXanh, attribute: .bottom, multiplier: 1, constant: 0)
//        let left = NSLayoutConstraint(item: viewTim, attribute: .left, relatedBy: .equal, toItem: viewVang, attribute: .right, multiplier: 1, constant: 0)
//        let width = NSLayoutConstraint(item: viewTim, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 1/2, constant: 0)
//        let height = NSLayoutConstraint(item: viewTim, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 1/2, constant: 0)
//
//        self.view.addSubview(viewTim)
//        view.addConstraints([top,left,width,height])
        
        
        
//        view.addSubview(viewTim)
//        viewTim.topAnchor.constraint(equalTo: viewXanh.bottomAnchor).isActive = true
//        viewTim.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
//        viewTim.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/2).isActive = true
//        viewTim.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/2).isActive = true
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

