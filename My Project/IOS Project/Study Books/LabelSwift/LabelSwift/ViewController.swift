//
//  ViewController.swift
//  LabelSwift
//
//  Created by An Nguyễn on 1/28/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//    var array:[Int] = []
//    var array1:Array<Int> = Array<Int>()
    
    let label:UILabel = {
        let l:UILabel = UILabel()
        //l.backgroundColor = #colorLiteral(red: 0.2366302914, green: 1, blue: 0.2148602049, alpha: 1)
        l.translatesAutoresizingMaskIntoConstraints = false
        //l.font = UIFont.systemFont(ofSize: 26)
        //l.font = UIFont.systemFont(ofSize: 17, weight: UIFont.Weight.bold)
        //l.font = UIFont.boldSystemFont(ofSize: 20)
        //l.font = UIFont.preferredFont(forTextStyle: UIFontTextStyle.body)
        l.font = UIFont(name: "Hey", size: 27)
        l.font = l.font.withSize(27)
        //l.textColor = #colorLiteral(red: 1, green: 0.0258490509, blue: 0.2641437061, alpha: 1)
        l.textColor = UIColor(displayP3Red: 64/225, green: 88/225, blue: 41/225, alpha: 1)
        l.backgroundColor = UIColor.blue
        l.sizeToFit()
        l.text = "Hello!"
        l.numberOfLines = 0
        return l
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.addSubview(label)
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        label.widthAnchor.constraint(equalToConstant: 200).isActive = true
        label.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

