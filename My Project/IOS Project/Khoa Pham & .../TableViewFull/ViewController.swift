//
//  ViewController.swift
//  TableViewFull
//
//  Created by An Nguyễn on 1/6/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tbView: UITableView!
    var arrVietNam:Array<Array<String>> = [["Hà Nội" ,"Hà Giang" , "Hà Nam"],["Khánh Hoà" , "Bình Định" , "Đà Nẵng"],["TP.Hồ Chí Minh" , "Đồng Nai" , "Long An" , "Cần Thơ"]]
    var arrHeader:Array<String> = ["Miền Bắc" , "Miền Trung" , "Miền Nam"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tbView.dataSource = self
        tbView.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ViewController:UITableViewDelegate , UITableViewDataSource{
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return arrHeader[section]
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrVietNam[section].count
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return arrVietNam.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! TableViewCell
        cell.imgCell.image = UIImage(named: "006")
        cell.lblCell.text = arrVietNam[indexPath.section][indexPath.row]
        return cell
    }
}



