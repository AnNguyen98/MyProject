//
//  ViewController.swift
//  UITableView
//
//  Created by An Nguyễn on 1/21/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var myTable: UITableView!
    let arrayKhoaHoc:Array<Array<String>> = [["IOS","PHP","Unity" , "Android","NodeJS"],["IOS","PHP","Unity" , "Android","NodeJS"],["IOS","PHP","Unity" , "Android","NodeJS"]]
    let array:Array<String> = ["Khoa 1" , "Khoa 2" ,"Khoa 3"]
    let arrayHinh:Array<Array<UIImage>> = [[#imageLiteral(resourceName: "hinh1"),#imageLiteral(resourceName: "hinh2"),#imageLiteral(resourceName: "hinh3"),#imageLiteral(resourceName: "hinh4"),#imageLiteral(resourceName: "hinh5")],[#imageLiteral(resourceName: "hinh6"),#imageLiteral(resourceName: "hinhNen3"),#imageLiteral(resourceName: "hinhNen1"),#imageLiteral(resourceName: "hinhNen2"),#imageLiteral(resourceName: "hinhDep-1507458888625")],[#imageLiteral(resourceName: "hinhNen3"),#imageLiteral(resourceName: "hinhNen1"),#imageLiteral(resourceName: "hinhNen1"),#imageLiteral(resourceName: "hinhDep-1507458888625"),#imageLiteral(resourceName: "hinhNen3")]]
    var img:UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myTable.delegate = self
        myTable.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayKhoaHoc[section].count
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return arrayKhoaHoc.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:TableViewCell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! TableViewCell
        cell.imgHinh.image = arrayHinh[indexPath.section][indexPath.row]
        cell.imgHinh.clipsToBounds = true
        cell.imgHinh.contentMode = .scaleAspectFill
        cell.lblTen.text = arrayKhoaHoc[indexPath.section][indexPath.row]
        
        return cell
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return array[section]
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let mh2 = sb.instantiateViewController(withIdentifier: "MH2") as! MyViewController
        mh2.img = arrayHinh[indexPath.section][indexPath.row]
        self.navigationController?.pushViewController(mh2, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

