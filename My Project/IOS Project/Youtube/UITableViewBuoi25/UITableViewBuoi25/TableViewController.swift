//
//  TableViewController.swift
//  UITableViewBuoi25
//
//  Created by An Nguyễn on 3/22/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var arrKhoaHoc:Array<Array<String>> = [["PHP","Android","IOS","NodeJS","Window"],["PHP","Android","IOS","NodeJS","Window"],["PHP","Android","IOS","NodeJS","Window"],["Swift","Object C","C++","JavaScript"]]
    //var arrKhoaHoc:Array<String> = ["PHP","Android","IOS","NodeJS","Window","Swift","Object C","C++","JavaScript"]
    let array:Array<String> = ["Khoá học","Language","Khoá học","Language"]
    
    let arrayHinh:Array<Array<String>> = [["hinh1","hinh2","hinh3","hinh4","hinh5"],["hinh6","hinh2","hinh3","hinh4","hinh5"],["hinh1","hinh2","hinh3","hinh4","hinh5"],["hinh1","hinh2","hinh3","hinh4","hinh5"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //tableView.isEditing = true
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return arrKhoaHoc.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrKhoaHoc[section].count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
//
//        let imageView1:UIImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: cell.frame.width/3, height: cell.frame.height))
//        imageView1.image = UIImage(named:)
//        let label:UILabel = UILabel()
//        label.text = arrKhoaHoc[indexPath.section][indexPath.row]
//        label.translatesAutoresizingMaskIntoConstraints = false
//        label.leftAnchor.constraint(equalTo: imageView.rightAnchor).isActive = true
//        label.heightAnchor.constraint(equalToConstant: 45).isActive = true
//        label.rightAnchor.constraint(equalTo: cell.rightAnchor).isActive = true
//        label.frame.origin.y = cell.frame.height/2
//        cell.addSubview(label)
//        cell.addSubview(imageView1)
        cell.imageView?.image = UIImage(named: arrayHinh[indexPath.section][indexPath.row])
        cell.textLabel?.text = arrKhoaHoc[indexPath.section][indexPath.row]

        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return array[section]
    }
    
//    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
//        if editingStyle == .delete {
//            arrKhoaHoc.remove(at: indexPath.row)
//            tableView.deleteRows(at: [indexPath], with: .automatic)
//        }
//    }
//    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
//
//        print(sourceIndexPath.row , sourceIndexPath.section)
//        print(destinationIndexPath.row, destinationIndexPath.section)
//
//        let a:String = arrKhoaHoc[sourceIndexPath.section][sourceIndexPath.row]
//        arrKhoaHoc[sourceIndexPath.section].remove(at: sourceIndexPath.row)
//
//        arrKhoaHoc[destinationIndexPath.section].insert(a, at: destinationIndexPath.row)
//        print(arrKhoaHoc)
//
//    }
//    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
//        return true
//    }
    
    override func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let btnOk:UITableViewRowAction = UITableViewRowAction(style: UITableViewRowActionStyle.destructive, title: "OK") { (btn, index) in
            print("OK")
            self.tableView.scrollToRow(at: IndexPath.init(row: 1, section: 1), at: UITableViewScrollPosition.bottom, animated: true)
        }
        btnOk.backgroundColor = UIColor.red
        let cancel:UITableViewRowAction = UITableViewRowAction(style: UITableViewRowActionStyle.default, title: "Cancel") { (btn, index) in
//            btn.backgroundColor = UIColor.blue
            print("Cancel")
        }
        cancel.backgroundColor = UIColor.blue
        let normal:UITableViewRowAction = UITableViewRowAction(style: UITableViewRowActionStyle.normal, title: "Normal") { (btn, index) in
//            btn.backgroundColor = UIColor.brown
            print("Normal")
        }
        //tableView.deleteRows(at: <#T##[IndexPath]#>, with: <#T##UITableViewRowAnimation#>)
        
        return [btnOk,cancel,normal]
    }
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
 //       cell.layer.transform = CATransform3DMakeScale(0.1, 0.1, 0.1)
//        UIView.animate(withDuration: 0.5) {
//            cell.layer.transform = CATransform3DMakeScale(1, 1, 1)
//        }
        
//        UIView.animateKeyframes(withDuration: 0.5, delay: TimeInterval(0.1 * CGFloat(indexPath.row)), options: UIViewKeyframeAnimationOptions.calculationModeLinear, animations: {
//            cell.layer.transform = CATransform3DMakeScale(1, 1, 1)
//        }, completion: nil)
//
        
        
//        UIView.transition(with: cell, duration: 1, options: UIViewAnimationOptions.transitionFlipFromRight, animations: nil, completion: nil)
        
        
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            tableView.cellForRow(at: indexPath)?.imageView?.layer.transform = CATransform3DMakeScale(0.1, 0.1, 0.1)
        UIView.animate(withDuration: 0.5) {
            tableView.cellForRow(at: indexPath)?.imageView?.layer.transform = CATransform3DMakeScale(1, 1, 1)
        }
    }
        
 
}
