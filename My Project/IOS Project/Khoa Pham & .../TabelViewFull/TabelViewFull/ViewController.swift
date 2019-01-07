//
//  ViewController.swift
//  TabelViewFull
//
//  Created by An Nguyễn on 1/7/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    let arrayVietNam:Array<Array<String>>  = [["Ha Noi" , "Ha Nam" , "Quang Ninh"],["Ha Tinh","Da Nang" , "Hue", "Vinh"],["TP.HCM", "Nha Trang" , "Vung Tau","Ca Mau"]]
    let arrayMien:Array<String> = ["Mien Bac" , "Mien Trung" , "Mien Nam"]
    let arrayKhoaHoc:Array<String> = ["IOS" , "Android" , "PHP" , "NodeJS" , "ReactNative"]
    @IBOutlet weak var tblview2: UITableView!
    
    @IBOutlet weak var tblView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tblView.dataSource = self
        tblView.delegate = self
        tblview2.delegate = self
        tblview2.dataSource = self
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Menu", style: UIBarButtonItemStyle.plain, target: self, action: #selector(ViewController.clickMenu))
        
    }
    @objc func clickMenu(){
        tblview2.isHidden = !tblview2.isHidden
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController:UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch tableView {
        case tblView:
            return arrayVietNam[section].count
        case tblview2:
            return arrayKhoaHoc.count
        default:
            return 0
        }
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        switch tableView {
        case tblView:
            return arrayVietNam.count
        case tblview2:
            return 1
        default:
            return 0
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch tableView {
        case tblView:
            let chanLe = indexPath.row % 3
            
            switch chanLe {
            case 0:
                let cell1 = tableView.dequeueReusableCell(withIdentifier: "cell1") as! TableViewCell1
                cell1.textLabel?.text = arrayVietNam[indexPath.section][indexPath.row]
                cell1.imageView?.image = UIImage(named: "hinhNen2")
                return cell1
            case 1:
                let cell2 = tblView.dequeueReusableCell(withIdentifier: "cell2") as! TableViewCell2
                return cell2
            default:
                let cell3 = tableView.dequeueReusableCell(withIdentifier: "cell3") as! TableViewCell3
                return cell3
            }
        default:
            let cell = tblview2.dequeueReusableCell(withIdentifier: "cell21") as! TableViewCell21
            cell.lblKhoaHoc.text = arrayKhoaHoc[indexPath.row]
                return cell
        }
        
        
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return arrayMien[section]
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let chanLe = indexPath.row % 3
        switch chanLe {
        case 0:
            return 300
        case 1:
            return 200
        default:
            return 100
        }
    }
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        switch tableView {
        case tblView:
            print("1")
            break
        case tblview2:
            print("2")
            break
        default:
            break
        }
    }
//    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
//        <#code#>
//    }
//    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
//        <#code#>
//    }
//    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
//        <#code#>
//    }
//    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
//        <#code#>
//    }
//    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCellEditingStyle {
//        <#code#>
//    }
}

