//
//  ViewController.swift
//  sqliteDB
//
//  Created by An Nguyễn on 3/26/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit
import SQLite

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let baiHat = Table("BaiHat")
        let idBH = Expression<Int64>("idBaiHat")
        let tenBH = Expression<String?>("tenBaiHat")
        let link = Expression<String>("linkBaiHat")
        do{
        let db = try Connection("appAn.db")
            for bh in try db.prepare(baiHat){
                print("id : \(bh[idBH]) , tenBH : \(bh[tenBH]) , link: \(bh[link])")
            }
        }catch{
            print("llloi")
        }
        
        

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

