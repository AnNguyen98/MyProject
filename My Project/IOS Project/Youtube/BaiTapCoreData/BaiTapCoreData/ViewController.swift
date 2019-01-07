//
//  ViewController.swift
//  BaiTapCoreData
//
//  Created by An Nguyễn on 3/30/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    
        var arrayData:Array<String> = []
        var data:String = ""
        let context:NSManagedObjectContext = {
        let appDel:AppDelegate = UIApplication.shared.delegate as! AppDelegate
        let ct:NSManagedObjectContext = appDel.persistentContainer.viewContext
        return ct
    }()

    @IBOutlet weak var txtText1: UITextField!
    @IBOutlet weak var txtText2: UITextField!
    @IBOutlet weak var tableViewMe: UITableView!
    
    @IBAction func txtToaDo(_ sender: UITextField) {
        data = sender.text!
        tableViewMe.frame.origin.y = sender.frame.origin.y + sender.frame.height + 5
        
        arrayData.removeAll()
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Search")
        request.predicate = NSPredicate(format: "name contains[c] %@", argumentArray: [sender.text!])
        do{
            let results = try context.fetch(request)
            for i in results{
                let a = (i as! NSObject).value(forKey: "name") as! String
                arrayData.append(a)
            }
        }catch{}
        tableViewMe.reloadData()
        print(arrayData)
        
    }
    @IBAction func btnSearch(_ sender: Any) {
         let newName = NSEntityDescription.insertNewObject(forEntityName: "Search", into: context)
        
        newName.setValue(data, forKey: "name")
        do{
            try context.save()
        }catch{
            print("Save Success!")
        }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableViewMe.dataSource = self
        tableViewMe.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
extension ViewController:UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayData.count
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = arrayData[indexPath.row]
        return cell
    }
}

