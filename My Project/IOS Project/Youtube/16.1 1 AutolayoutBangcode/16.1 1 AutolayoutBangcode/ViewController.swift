//
//  ViewController.swift
//  16.1 1 AutolayoutBangcode
//
//  Created by An Nguyễn on 2/19/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class BaseView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupBaseView()
    }
    func setupBaseView(){
        self.translatesAutoresizingMaskIntoConstraints = false
        self.layer.borderColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        self.layer.borderWidth = 2
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class ViewController: DemoViewController {
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
    let viewVang:BaseView = {
        let v:BaseView = BaseView()
        v.backgroundColor = #colorLiteral(red: 0.9994240403, green: 0.9855536819, blue: 0, alpha: 1)
        return v
    }()
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view, typically from a nib.
//        setupViewDo()
//    }
    override func setup() {
        //super.setup()
        setupViewDo()
        setupViewVang()
        setupViewXanh()
    }
    func setupViewDo(){
    
//        let top = NSLayoutConstraint(item: viewDo, attribute: .top, relatedBy: .equal, toItem:topLayoutGuide, attribute: .bottom, multiplier: 1, constant: 0)
//        let bottom = NSLayoutConstraint(item: viewDo, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1, constant: 0)
//        let left = NSLayoutConstraint(item: viewDo, attribute: .left, relatedBy: .equal, toItem: view, attribute: .left, multiplier: 1, constant: 0)
//        let right = NSLayoutConstraint(item: viewDo, attribute: .right, relatedBy: .equal, toItem: view, attribute: .right, multiplier: 1, constant: 0)
//
//        view.addSubview(viewDo)
//        view.addConstraints([top,bottom,left,right])

//        view.addSubview(viewDo)
//        view.addSubview(viewXanh)
//        view.addSubview(viewVang)

        
//        viewDo.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor).isActive = true
//        viewDo.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
//        viewDo.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
//        viewDo.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true

//        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":viewDo]))
//        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":viewXanh]))
//        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-20-[v0][v1]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":viewDo,"v1":viewXanh]))
//        viewDo.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/2).isActive = true

//        view.addContraintsWVF(VSF: "H:|[v0][v1]|", views: [viewXanh,viewVang])
//        view.addContraintsWVF(VSF: "H:|[v0]|", views: [viewDo])
//        view.addContraintsWVF(VSF: "V:|-20-[v0][v1]|", views: [viewDo,viewXanh])
//        viewDo.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/2).isActive = true
//        viewXanh.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/2).isActive = true
//        //viewVang.heightAnchor.constraint(equalTo: viewXanh.heightAnchor).isActive = true
//        viewVang.topAnchor.constraint(equalTo: viewDo.bottomAnchor).isActive = true
//        viewVang.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true

        view.addSubview(viewDo)
        view.addContraintsWVF(VSF: "H:|[v0]|", views: [viewDo])
        view.addContraintsWVF(VSF: "V:|[v0]|", views: [viewDo])
    }
    
    func setupViewXanh(){
        viewDo.addSubview(viewXanh)
        viewXanh.centerXAnchor.constraint(equalTo: viewDo.centerXAnchor).isActive = true
        viewDo.addContraintsWVF(VSF: "V:|v0|", views: [viewXanh])
        viewXanh.widthAnchor.constraint(equalTo: viewDo.widthAnchor, multiplier: 1/2).isActive = true
    }
    
    func setupViewVang(){
        viewXanh.addSubview(viewVang)
        viewVang.centerXAnchor.constraint(equalTo: viewXanh.centerXAnchor).isActive = true
        viewXanh.addContraintsWVF(VSF: "V:|v0|", views: [viewVang])
        viewVang.widthAnchor.constraint(equalTo: viewXanh.widthAnchor, multiplier: 1/2).isActive = true
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
//    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
//        viewVang.widthAnchor.constraint(equalTo: viewXanh.widthAnchor, multiplier: 1/5).isActive = true
//    }


}
extension UIView{
    //views:UIView...
    func addContraintsWVF(VSF:String,views:[UIView]){
        var dict = Dictionary<String,Any>()
        //var dict:Dictionary = Dictionary<String,Any>()
        
        for (index,view) in views.enumerated(){
            dict.updateValue(view, forKey: "v\(index)")
        }
        self.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: VSF, options: NSLayoutFormatOptions(), metrics: nil, views: dict ))
    }
}

