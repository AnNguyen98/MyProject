//
//  TableViewCell.swift
//  CollectionViewBuoi27
//
//  Created by An Nguyễn on 3/28/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
   // var i:Int = 0
    @IBOutlet weak var collectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        //Cach 1
//        collectionView.dataSource = self
//        collectionView.delegate = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
//Cach 1
//extension TableViewCell:UICollectionViewDataSource,UICollectionViewDelegate{
//    func numberOfSections(in collectionView: UICollectionView) -> Int {
//        return arrayDanhSach.count
//    }
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cellC = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
//        cellC.backgroundColor = UIColor.brown
//        cellC.lblLabel.text = arrayDanhSach[i][indexPath.row]
//        return cellC
//    }
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return arrayDanhSach[i].count
//    }
//}

