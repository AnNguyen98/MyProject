//
//  ViewController.swift
//  CollectionViewBuoi27
//
//  Created by An Nguyễn on 3/28/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

//Cach 1
//var arrayDanhSach:Array<Array<String>> = [["Cho","Nai","To","Vet"],["Com","Ca","Bo","Meo"]]

class ViewController: UIViewController {

   
    var arrayDanhSach:Array<Array<String>> = [["Cho","Nai","To","Vet"],["Com","Ca","Bo","Meo"]]
    
    @IBOutlet weak var tableViewMe: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableViewMe.delegate = self
        tableViewMe.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController:UITableViewDataSource , UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayDanhSach[section].count
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return arrayDanhSach.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellTable", for: indexPath) as! TableViewCell
        cell.backgroundColor = UIColor.blue
        //Cach 1
        cell.collectionView.tag = indexPath.section
        cell.collectionView.delegate = self
        cell.collectionView.dataSource = self
        return cell
    }
}
extension ViewController:UICollectionViewDelegate,UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        cell.lblLabel.text = arrayDanhSach[collectionView
            .tag][indexPath.row]
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayDanhSach[collectionView.tag].count
    }
}
