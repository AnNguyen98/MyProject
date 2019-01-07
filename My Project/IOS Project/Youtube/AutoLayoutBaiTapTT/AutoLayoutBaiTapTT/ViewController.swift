//
//  ViewController.swift
//  AutoLayoutBaiTapTT
//
//  Created by An Nguyễn on 2/6/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class BaseView:UIView{
    func setBaseView(){
        self.layer.borderColor = #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1)
        self.layer.borderWidth = 2
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        setBaseView()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class ViewXanh: BaseView {
    override func setBaseView() {
        super.setBaseView()
        self.backgroundColor = #colorLiteral(red: 0.1226603888, green: 1, blue: 0.4133237174, alpha: 1)
    }
}
class ViewDo: BaseView {
    override func setBaseView() {
        super.setBaseView()
        self.backgroundColor = #colorLiteral(red: 1, green: 0.0258490509, blue: 0.2641437061, alpha: 1)
    }
}
class ViewVang: BaseView {
    override func setBaseView() {
        super.setBaseView()
        self.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
    }
}

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        setView()
    }
    
    func setView(){
        let viewDo = ViewDo()
        let viewXanh = ViewXanh()
        let viewVang = ViewVang()
        view.addSubview(viewVang)
        view.addSubview(viewDo)
        view.addSubview(viewXanh)
        
//        let top = NSLayoutConstraint(item: viewDo, attribute: .top, relatedBy: .equal, toItem: topLayoutGuide, attribute: .bottom, multiplier: 1, constant: 0)
//        let left = NSLayoutConstraint(item: viewDo, attribute: .left, relatedBy: .equal, toItem: view, attribute: .left, multiplier: 1, constant: 0)
//        let height = NSLayoutConstraint(item: viewDo, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 1/2, constant: 0)
//        let width = NSLayoutConstraint(item: viewDo, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 1, constant: 0)
//
//        let top1 = NSLayoutConstraint(item: viewXanh, attribute: .top, relatedBy: .equal, toItem: viewDo, attribute: .bottom, multiplier: 1, constant: 0)
//        let left1 = NSLayoutConstraint(item: viewXanh, attribute: .left, relatedBy: .equal, toItem: view, attribute: .left, multiplier: 1, constant: 0)
//        let height1 = NSLayoutConstraint(item: viewXanh, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 1/2, constant: 0)
//        let width1 = NSLayoutConstraint(item: viewXanh, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 1, constant: 0)
//        view.addConstraints([top,left,height,width,top1,left1,height1,width1])
        
        
//        viewDo.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor).isActive = true
//        viewDo.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
//        viewDo.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1).isActive = true
//        viewDo.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/2).isActive = true
//
//        viewXanh.topAnchor.constraint(equalTo: viewDo.bottomAnchor).isActive = true
//        viewXanh.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
//        viewXanh.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/2).isActive = true
//        viewXanh.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/2).isActive = true
//
//        viewVang.topAnchor.constraint(equalTo: viewDo.bottomAnchor).isActive = true
//        viewVang.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
//        viewVang.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/2).isActive = true
//        viewVang.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/2).isActive = true

        
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":viewDo]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0][v1]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":viewXanh,"v1":viewVang]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-20-[v0][v1]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":viewDo,"v1":viewXanh]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-20-[v0][v1]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":viewDo,"v1":viewVang]))
        viewDo.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/2).isActive = true
        viewXanh.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/2).isActive = true
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

