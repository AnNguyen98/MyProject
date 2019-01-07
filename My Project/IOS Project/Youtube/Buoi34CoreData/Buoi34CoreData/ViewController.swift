//
//  ViewController.swift
//  Buoi34CoreData
//
//  Created by An Nguyễn on 3/27/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit
import CoreData
class ViewController: UIViewController {
    
    var context:NSManagedObjectContext {
        let appDel:AppDelegate = UIApplication.shared.delegate as! AppDelegate
        let ct:NSManagedObjectContext = appDel.persistentContainer.viewContext
        return ct
    }

    var idDef:UserDefaults = UserDefaults()
    var M_id:Int = 0
    
    @IBOutlet weak var id: UITextField!
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var fullName: UITextField!
    @IBOutlet weak var pass: UITextField!
    
    @IBAction func update(_ sender: Any) {
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "User")
        do{
           let results = try context.fetch(request)
            for result in results{
                (result as! NSObject).setValue(name.text!, forKey: "userName")
            }
            do{
                try context.save()
                print("Da luu!")
            }catch{
                print("Loi cap ")
            }
        }catch{}
    }
    
    
    @IBAction func Delete(_ sender: Any) {
    
        
        
        let rq = NSFetchRequest<NSFetchRequestResult>(entityName: "User")
        do{
            let results = try context.fetch(rq)
            idDef.removeObject(forKey: "id")
            idDef.set(1, forKey: "id")
            for result in results{
                context.delete(result as! NSManagedObject)
                do{
                    try context.save()
                    
                }catch{}
            }
        }catch{}
        
        
        
        
    }
    
    @IBAction func show(_ sender: Any) {

        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "User")
        
        //Truy van
//        request.predicate = NSPredicate(format: " id < %@", argumentArray: [2])
        //request.predicate = NSPredicate(format: "id = %@ or userName = %@", argumentArray: [id.text! , name.text!])
        do{
            let results = try context.fetch(request)
            for result in results{
                print((result as! NSObject).value(forKey: "userName"))
//                print((result as! NSObject).value(forKey: "userName"))
//                print((result as! NSObject).value(forKey: "password"))
//                print((result as! NSObject).value(forKey: "fullName"))
            }
        }catch{}
    }
    @IBAction func save(_ sender: Any) {
        let newUser = NSEntityDescription.insertNewObject(forEntityName: "User", into: context)
        //let id1 = Int64(id.text!)
        newUser.setValue(M_id, forKey: "id")
        newUser.setValue(name.text!, forKey: "userName")
        newUser.setValue(fullName.text!, forKey: "fullName")
        newUser.setValue(pass.text!, forKey: "password")
        do{
            
            try context.save()
            M_id += 1
            idDef.set(M_id, forKey: "id")
            
        }catch{
            print("Loi roi")
        }
        
        
    }
    //Bien luu tru
    var i:Int = 0
    //Bien Tinh toan
    var a:String{
        let chuoi:String = name.text!
        return chuoi
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if let id:Int = idDef.object(forKey: "id") as? Int{
            M_id = id
        }
        else{
            idDef.set(1, forKey: "id")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        print(a)
    }


}

