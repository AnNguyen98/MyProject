//
//  ViewController.swift
//  12.3TableViewAgain
//
//  Created by An Nguyễn on 3/19/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView2: UITableView!
    let arrayTinh:Array<Array<String>> = [["Hà Nội","Quảng Ninh","Tây Ninh","Lào Cai"] ,["Quảng Nam","Đà Nẵng","HÀ Tĩnh","Huế", "Nghệ An"] , ["Cần Thơ","TP.HCM","Nha Trang","Vũng Tàu","CàMauu","Đồng Tháp"]]
    let arrayMien:Array<String> = ["Miền Bắc","Miền Trung","Miền Nam"]
    let arrayTableView2:Array<String> = ["IOS","PHP","Android"]
    
    @IBOutlet weak var myTableView1: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myTableView1.delegate = self
        myTableView1.dataSource = self
        tableView2.delegate = self
        tableView2.dataSource = self
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named:"menu"), style: UIBarButtonItemStyle.plain, target: self, action: #selector(clickButton))
    }
    @objc func clickButton(){
        tableView2.isHidden = !tableView2.isHidden
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
extension ViewController:UITableViewDelegate,UITableViewDataSource{
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//
//    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch tableView {
        case myTableView1:
            return arrayTinh[section].count
        default:
            return arrayTableView2.count
        }
        
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch tableView {
        case myTableView1:
            return arrayMien[section]
        default:
            return "Khoa hoc"
        }
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch tableView {
        case myTableView1:
            let du = indexPath.row % 3
            
            switch du {
            case 0:
                let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! myTableViewCell
                cell.lblTen.text = arrayTinh[indexPath.section][indexPath.row]
                cell.imgHinh.image = UIImage(named:"hinhNen1")
                cell.imgHinh.contentMode = .scaleAspectFit
                return cell
            case 1:
                let cell2 = tableView.dequeueReusableCell(withIdentifier: "cell2") as! TableViewCell2
                return cell2
            default:
                let cell3 = tableView.dequeueReusableCell(withIdentifier: "cell3") as! TableViewCell3
                return cell3
            }
        default:
            let cell201 = tableView.dequeueReusableCell(withIdentifier: "cell201") as! TableViewCell201
            cell201.textLabel?.text = arrayTableView2[indexPath.row]
            cell201.backgroundColor = UIColor.red
            return cell201
        }
        
    }
        func numberOfSections(in tableView: UITableView) -> Int {
            
            switch tableView {
            case myTableView1:
                return arrayMien.count
            default:
                return 1
            }
            
    }
        
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 150
    }
    
//    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
//        return true
//    }
//    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
//        <#code#>
//    }
//    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
//        <#code#>
//    }
//    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
//        <#code#>
//    }
//    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
//        <#code#>
//    }
    
}
