//
//  ViewController.swift
//  ChuyenManHinh
//
//  Created by An Nguyễn on 3/18/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    let arrayKhoaHoc:Array<Array<String>> = [["IOS","NodeJS","React Native","Javascript"],["PHP","Android","C++","English","Java"],["Kotlin" , "Xamarin"]]
    let arraySection:Array<String> = ["Now","Later","Yeah"]
    
    @IBOutlet weak var myTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myTableView.delegate = self
        myTableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let st = storyboard?.instantiateViewController(withIdentifier: "MH2")
        self.navigationController?.pushViewController(st!, animated: true)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayKhoaHoc[section].count
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return arraySection.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        
        cell!.textLabel?.text = arrayKhoaHoc[indexPath.section][indexPath.row]
        
        return cell!
        
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return arraySection[section]
    }


}

