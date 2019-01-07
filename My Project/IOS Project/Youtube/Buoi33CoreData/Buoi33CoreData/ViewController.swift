//
//  ViewController.swift
//  Buoi33CoreData
//
//  Created by An Nguyễn on 3/30/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit
import CoreData


class ViewController: UIViewController {

    @IBOutlet weak var txtID: UITextField!
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtPrice: UITextField!
    @IBOutlet weak var txtImage: UITextField!
    
    var arrayProduct:Array<SanPham> = Array<SanPham>()
    
    let context:NSManagedObjectContext = {
        let appDel:AppDelegate = UIApplication.shared.delegate as! AppDelegate
        let ct:NSManagedObjectContext = appDel.persistentContainer.viewContext
        return ct
    }()
    @IBAction func btnSave(_ sender: Any) {
        let newProduct = NSEntityDescription.insertNewObject(forEntityName: "Product", into: context)
        let id:Int32 = Int32(txtID.text!)!
        let pr:Double = Double(txtPrice.text!)!
        newProduct.setValue(id, forKey: "id")
        newProduct.setValue(txtName.text!, forKey: "name")
        newProduct.setValue(pr, forKey: "price")
        newProduct.setValue(txtImage.text!, forKey: "image")
        
        do{
            try context.save()
            print("Save Success!")
        }catch{
            print("Error Save!!!")
        }
        
    }
    @IBAction func btnShow(_ sender: Any) {
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Product")
        
        ///
        let id:Int32 = Int32(txtID.text!)!
        //let pr:Double = Double(txtPrice.text!)!
        request.predicate = NSPredicate(format: "id > %@", argumentArray: [id])
        
        do{
            let results = try context.fetch(request)
            for i in results{
                arrayProduct.append(SanPham(mana: i as! NSObject))
            }
        }catch{
            print("Error Show!!! ")
        }
        print(arrayProduct)
        
        
    }
    @IBAction func btnDelete(_ sender: Any) {
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Product")
        
        
        //Xoa phan tu
        let id:Int32 = Int32(txtID.text!)!
        request.predicate = NSPredicate(format: "id = %@", argumentArray: [id])
        
        do{
            let results = try context.fetch(request)
            for i in results{
                context.delete(i as! NSManagedObject)
                do{
                    try context.save()
                }catch{}
            }
            
        }catch{
            print("Error Delete!!!")
        }
        print("\(arrayProduct)")
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

