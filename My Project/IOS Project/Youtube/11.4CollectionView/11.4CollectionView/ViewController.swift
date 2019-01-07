//
//  ViewController.swift
//  11.4CollectionView
//
//  Created by An Nguyễn on 3/20/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var CollView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        CollView.delegate = self
        CollView.dataSource = self
        //CollView.contentInset.left = 20
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 3
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell1
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
//        <#code#>
//    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width - 40, height: 100)
    }
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        //cell.alpha = 0
        cell.backgroundColor = UIColor.blue
        cell.frame.origin.x = -600
        cell.frame.origin.y = -600
        cell.frame.size = CGSize.zero
        
//        UIView.animate(withDuration: 1) {
//            //cell.alpha = 1
//            // cell.backgroundColor = UIColor.yellow
//            //cell.frame.origin.x = 20
//            cell.frame.origin.y =  CGFloat(indexPath.row * 100)
//        }
        UIView.animate(withDuration: 3, animations: {
            cell.frame.origin.x = 20
            cell.frame.origin.y =  CGFloat(indexPath.row * 100)
            UIView.animate(withDuration: 1, animations: {
                cell.frame.size = CGSize(width: UIScreen.main.bounds.width - 40, height: 100)
            })
            
        }) { (true) in
            cell.backgroundColor = UIColor.red
        }
    }
    
    
}
