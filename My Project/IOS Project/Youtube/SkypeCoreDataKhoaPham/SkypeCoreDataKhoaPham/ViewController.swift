//
//  ViewController.swift
//  SkypeCoreDataKhoaPham
//
//  Created by An Nguyễn on 3/26/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    @IBOutlet weak var addButton: UIButton!
    @IBAction func addButton(_ sender: Any) {
        //Ket noi coredata thong qua appdelegate
        
        let appDel:AppDelegate = UIApplication.shared.delegate as! AppDelegate
        // moc context cua no ra
        let context:NSManagedObjectContext = appDel.persistentContainer.viewContext
        //Tao bien ket noi de insert
        let newBH = NSEntityDescription.insertNewObject(forEntityName: "BaiHat", into: context)
        //Set thuoc tinh
        newBH.setValue("01", forKey: "idBaiHat")
        newBH.setValue("ai roi cung khac", forKey: "tenBaiHat")
        newBH.setValue("mp3.zing.vn", forKey: "linkBaiHat")
        //Save
        do{
          try context.save()
            
        }catch{}
        
    }
    @IBAction func showButton(_ sender: Any) {
        let appDel:AppDelegate = UIApplication.shared.delegate as! AppDelegate
        let context:NSManagedObjectContext = appDel.persistentContainer.viewContext
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "BaiHat")
        do{
           let result  = try context.fetch(request)
            for i in result{
                let object = i as! NSManagedObject
                //print(object.value(forKey: "idBaiHat"))
                print(object.value(forKey: "tenBaiHat"))
         }
        }catch{}
        
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

