//
//  ViewController.swift
//  UITableView2
//
//  Created by An Nguyễn on 3/13/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    private let items:Array<String> = ["IOS","PHP","Android","Windown Phone"]
    private var mytableView:UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let barHeight:CGFloat = UIApplication.shared.statusBarFrame.size.height
        
        let displayWidth:CGFloat = self.view.frame.width
        let displayHeight:CGFloat = self.view.frame.size.height
        
        mytableView = UITableView(frame: CGRect(x: 0, y: barHeight, width: displayWidth, height: displayHeight))
        
        mytableView.register(UITableViewCell.self, forCellReuseIdentifier: "myCell")
        mytableView.dataSource = self
        mytableView.delegate = self
        
        self.view.addSubview(mytableView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell")
        cell?.textLabel?.text = items[indexPath.row]
        return cell!
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        print("Hello \(indexPath.row)")
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    

}

