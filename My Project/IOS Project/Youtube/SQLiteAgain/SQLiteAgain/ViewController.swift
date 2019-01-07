//
//  ViewController.swift
//  SQLiteAgain
//
//  Created by An Nguyễn on 4/20/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit
import SQLite

class ViewController: UIViewController {

    @IBOutlet weak var tableViewMe: UITableView!
    @IBOutlet weak var tenChimTxt: UITextField!
    @IBOutlet weak var hinhChimTxt: UITextField!
    let queryTable = Table("chim")
    
    @IBAction func SelectBtn(_ sender: Any) {
         //Read - Write
        do{
            let db = try Connection("\(path)/DB.sqlite")
            
            do{
                let results = try db.prepare(queryTable)
                print(results)
                for chim in results{
                    arrayChim.append(Chim(row: chim))
                }
                print(arrayChim)
            }catch{}
        }catch{}
        tableViewMe.reloadData()

        
    }
    @IBAction func InsertBtn(_ sender: Any) {
        do{
            let db = try Connection("\(path)/DB.sqlite")
            do{
                let ten = Expression<String>("tenChim")
                let hinh = Expression<String>("hinhChim")
                try db.run(queryTable.insert(ten <- "\(tenChimTxt.text!)", hinh <- "\(hinhChimTxt.text!)"))
                // INSERT INTO "users" ("email", "name") VALUES ('alice@mac.com', 'Alice')
            }catch{}
        }catch{
            print("Error Insert!!!")
        }
        tableViewMe.reloadData()

    }
    @IBAction func DeleteBtn(_ sender: Any) {
        let id = Expression<Int>("idChim")
        let del = queryTable.filter(id == 5)
        do{
            let db = try Connection("\(path)/DB.sqlite")
            try db.run(del.delete())
            // DELETE FROM "users" WHERE ("id" = 1)
            print("Delete Success!!")
        }catch{}
        tableViewMe.reloadData()
    }
    
    let path = NSSearchPathForDirectoriesInDomains(
        .documentDirectory, .userDomainMask, true
        ).first!
    
    var arrayChim:Array<Chim> = Array<Chim>()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Only Read
//        let path = Bundle.main.path(forResource: "DB", ofType: "sqlite")!
//        do{
//            let db = try Connection(path, readonly: true)
//            let queryTable = Table("chim")
//            do{
//               let results = try db.prepare(queryTable)
//                print(results)
//                for chim in results{
//                    arrayChim.append(Chim(row: chim))
//                }
//                print(arrayChim)
//            }catch{}
//
//            //print(queryTable)
//        }catch{}
        
        tableViewMe.dataSource = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController:UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayChim.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCellMe
        cell.labelIDChim.text = arrayChim[indexPath.row].idChim
        cell.labelTenChim.text = arrayChim[indexPath.row].tenChim
        let queue:DispatchQueue = DispatchQueue(label: "queue")
        queue.async {
            if self.arrayChim[indexPath.row].hinhChim != ""{
                let url:URL = URL(string: self.arrayChim[indexPath.row].hinhChim)!
                do{
                    let data:Data = try Data(contentsOf: url)
                    DispatchQueue.main.async {
                        cell.imageChim.image = UIImage(data: data)
                    }
                }catch{
                    print("Loi load image")
                }
            }
            
            
        }
        return cell
    }
}
