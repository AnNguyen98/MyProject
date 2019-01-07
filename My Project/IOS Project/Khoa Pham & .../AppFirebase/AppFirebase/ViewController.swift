//
//  ViewController.swift
//  AppFirebase
//
//  Created by An Nguyễn on 6/5/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

class ViewController: UIViewController {

    var id:Int = 0
    let usdf:UserDefaults? =  UserDefaults()
    
    var arrayData:Array<BaiHat> = []
    @IBOutlet weak var myTableView: UITableView!
    @IBOutlet weak var txtID: UITextField!
    @IBOutlet weak var txtName: UITextField!
    @IBAction func btnInsert(_ sender: Any) {
        let ref:DatabaseReference = Database.database().reference()
        
        usdf?.setValue(id, forKey: "id")
        if let v_id = usdf?.object(forKey: "id"){
            id = v_id as! Int
            id += 1
        }
        
        ref.child("DanhSachBaiHat").child("BaiHat\(id)").setValue(["id":txtID.text!,"name":txtName.text!])
        
//        ref.child("DanhSachBaiHat").observe(DataEventType.value) { (data) in
//            let BH:Dictionary<BaiHat> = try JSONSerialization.data(withJSONObject: data, options: JSONSerialization.WritingOptions())
        
  //      }
        myTableView.reloadData()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let v_id = usdf?.object(forKey: "id"){
            id = v_id as! Int
            id += 1
        }
        
        // Do any additional setup after loading the view, typically from a nib.
//        let ref:DatabaseReference = Database.database().reference()
        
//        ref.child("BaiHat").child("BaiHat1").observe(DataEventType.value, with: { (data) in
//            print(data)
//        })
//
//
//        ref.child("BaiHat").child("BH3").setValue(["id":3,"name":"BH3"])
//
//        ref.observe(DataEventType.value) { (data) in
//            print(data)
//        }
        
        myTableView.delegate = self
        myTableView.dataSource = self
        

    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayData.count
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell = myTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        //cell.textLabel?.text =
        return cell
    }
}

