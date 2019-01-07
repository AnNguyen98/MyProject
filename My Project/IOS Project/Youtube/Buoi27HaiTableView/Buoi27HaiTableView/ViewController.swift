//
//  ViewController.swift
//  Buoi27HaiTableView
//
//  Created by An Nguyễn on 3/29/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tableView1: UITableView!
    @IBOutlet weak var tablwView2: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView1.delegate = self
        tableView1.delegate = self
        tablwView2.delegate = self
        tablwView2.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController :UITableViewDelegate , UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        if tableView == tableView1{
            return 1
        }else{
            return 2
        }
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == tableView1{
            let cell1 = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
            cell1.textLabel?.text = "table1 \(indexPath.row)"
            cell1.backgroundColor = UIColor.blue
            return cell1
        }else{
            let cell2 = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath)
            cell2.textLabel?.text = "table2 \(indexPath.row)"
            cell2.backgroundColor = UIColor.red
            return cell2
        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == tableView1 {
            return 5
        }else{
            return 10
        }
        
    }
}

