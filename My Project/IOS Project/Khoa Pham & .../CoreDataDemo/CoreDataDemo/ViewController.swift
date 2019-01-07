//
//  ViewController.swift
//  CoreDataDemo
//
//  Created by An Nguyễn on 1/22/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    @IBOutlet weak var txtTT: UITextField!
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtAge: UITextField!
    @IBAction func btnInsert(_ sender: AnyObject) {
        let appDel:AppDelegate = UIApplication.shared.delegate as! AppDelegate
        let context:NSManagedObjectContext = appDel.persistentContainer.viewContext
//        let entity = NSEntityDescription.entity(forEntityName: "KhachHang", in: context)
        let newKhachHang = NSEntityDescription.insertNewObject(forEntityName: "KhachHang", into: context)
        
        newKhachHang.setValue(Int(txtTT.text!), forKey: "tt")
        newKhachHang.setValue(txtName.text, forKey: "names")
        newKhachHang.setValue(Int(txtAge.text!), forKey: "age")
        
        do{
            try context.save()
            print("insert sucsess!!")
        }catch{
            print("Loi roi" )
        }
        
        
    }
    @IBOutlet weak var lblShow: UILabel!
    @IBAction func btnShow(_ sender: Any) {
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

