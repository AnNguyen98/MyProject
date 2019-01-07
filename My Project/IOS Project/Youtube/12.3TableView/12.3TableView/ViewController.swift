//
//  ViewController.swift
//  12.3TableView
//
//  Created by An Nguyễn on 2/26/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    let arrayTinh:Array<Array<String>> = [["Hà Nội","Quảng Ninh","Yên Bái"],["Hà Tĩnh","Đà Nẵng","Quảng Nam"],["TP.HCM","Cà Mau","Cần Thơ","Nha Trang"]]
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.dataSource = self
        tableView.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return arrayTinh.underestimatedCount
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayTinh[section].count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.lblText.text =  arrayTinh[indexPath.section][indexPath.row]
        return cell
    }


}

