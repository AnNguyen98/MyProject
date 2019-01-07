//
//  ViewController.swift
//  UITableView
//
//  Created by An Nguyễn on 3/13/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    let items:Array<String> = ["IOS","Android","Mac","PHP"]
    private var myTableView:UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myTableView = UITableView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height))
        
        myTableView.register(UITableViewCell.self, forCellReuseIdentifier: "myCell")
        
        
        
//        myTableView.translatesAutoresizingMaskIntoConstraints = false
//        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|v1|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v1":myTableView]))
//        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|v1|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v1":myTableView]))
        
        myTableView.dataSource = self
        myTableView.delegate = self
        
        self.view.addSubview(myTableView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("didSelectRowAt indexPath:")
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell")
        cell?.textLabel?.text = items[indexPath.row]
        if indexPath.row % 2 == 0{
            cell?.backgroundColor = UIColor.blue
        }else{
            cell?.backgroundColor = UIColor.red
        }
        return cell!
    }


}

