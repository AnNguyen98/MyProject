//
//  ViewController.swift
//  Buoi29_CoreData
//
//  Created by An Nguyễn on 3/29/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit
import CoreData


class ViewController: UIViewController {
    
    let context:NSManagedObjectContext = {
        let appDel:AppDelegate = UIApplication.shared.delegate as! AppDelegate
        let ct:NSManagedObjectContext = appDel.persistentContainer.viewContext
        return ct
    }()

    var m_ID:UserDefaults = UserDefaults()
    var idMe:Int = 0
    
    @IBOutlet weak var txtID: UITextField!
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtPrice: UITextField!
    @IBOutlet weak var txtImageProduct: UITextField!
    @IBOutlet weak var btnUpdate: UIButton!
    @IBAction func btnUpdate(_ sender: Any) {
        
        //let newProduct
        
    }
    @IBAction func btnSave(_ sender: Any) {
        let newProduct = NSEntityDescription.insertNewObject(forEntityName: "Product", into: context)
        newProduct.setValue(Int32(idMe), forKey: "id")
        newProduct.setValue(txtName.text!, forKey: "name")
        newProduct.setValue(Double(txtPrice.text!), forKey: "price")
        newProduct.setValue(txtImageProduct.text!, forKey: "image")
        do{
            try context.save()
            idMe += 1
            print("Save Success!")
        }catch{
            print("Error Save!!!")
        }
        
    }
    @IBAction func btnShow(_ sender: Any) {
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Product")
        do{
            let results = try context.fetch(request)
            for result in results{
                print((result as! NSObject).value(forKey: "id"))
            }
        }catch{
            print("Error Show!!!")
        }
        
    }
    @IBAction func btnDelete(_ sender: Any) {
        m_ID.set(1, forKey: "id")
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Product")
        do{
            let results = try context.fetch(request)
            for result in results{
                context.delete(result as! NSManagedObject)
                do{
                    idMe += 1
                    try context.save()
                    print("Delete Success!")
                }catch{
                    print("Error Delete!!!")
                }
                
            }
        }catch{
            print("Error Delete!!!")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //m_ID.set(idMe, forKey: "id")
        if let i:Int = context.value(forKey: "id") as? Int{
            idMe =  i + 1
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

