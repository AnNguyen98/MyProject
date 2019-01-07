//
//  ViewController.swift
//  AutoLayoutByCode_1
//
//  Created by An Nguyễn on 2/4/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let viewDo:UIView = {
        let v:UIView = UIView()
        v.backgroundColor = #colorLiteral(red: 1, green: 0.2756088437, blue: 0.3344119086, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        v.layer.borderColor = #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1)
        v.layer.borderWidth = 2
        return v
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupViewDo()
    }
    func setupViewDo(){
        view.addSubview(viewDo)
//        let top = NSLayoutConstraint(item: viewDo, attribute: .top, relatedBy: .equal, toItem: topLayoutGuide, attribute: .bottom, multiplier: 1, constant: 0)
//        let bottom = NSLayoutConstraint(item: viewDo, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1, constant: 0)
//        let left = NSLayoutConstraint(item: viewDo, attribute: .left, relatedBy: .equal, toItem: view, attribute: .left, multiplier: 1, constant: 0)
//        let right = NSLayoutConstraint(item: viewDo, attribute: .right, relatedBy: .equal, toItem: view, attribute: .right, multiplier: 1, constant: 0)
//        view.addConstraints([top,left,right,bottom])
        
//        viewDo.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor).isActive = true
//        viewDo.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
//        viewDo.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
//        viewDo.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        
//        viewDo.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
//        viewDo.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor).isActive = true
//        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":viewDo]))
//        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-20-[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":viewDo]))

        //viewDo.topAnchor.constraint(equalTo: 20).isActive = true
        
        view.AutoLayoutWithVisualFormat(VSF: "H:|[v0]|", views: viewDo)
        view.AutoLayoutWithVisualFormat(VSF: "V:|-20-[v0(200)]", views: viewDo)
        
        // khi them do dai nho bo ca sau "|" do neu the se cung dot , cai do vua xac ding width , height, x ,y luon
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
extension UIView{
    func AutoLayoutWithVisualFormat(VSF:String,views:UIView...){
        var dict = Dictionary<String,Any>()
        for (index,view) in views.enumerated(){
            //dict.updateValue(view, forKey: "v\(index)")
            dict["v\(index)"] = view
        }
        print(dict)
        self.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: VSF, options: NSLayoutFormatOptions(), metrics: nil, views: dict))
    }
}


