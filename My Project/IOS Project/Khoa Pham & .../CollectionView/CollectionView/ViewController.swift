//
//  ViewController.swift
//  CollectionView
//
//  Created by An Nguyễn on 1/5/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        collectionView.delegate = self
        collectionView.dataSource = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
//    func numberOfSections(in collectionView: UICollectionView) -> Int {
//        return 4
//    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CELL", for: indexPath) as! CollectionViewCell
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width-20, height: UIScreen.main.bounds.height/4)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        //cell.alpha = 0
        //cell.backgroundColor = #colorLiteral(red: 1, green: 0.2756088437, blue: 0.3344119086, alpha: 1)
        //cell.frame.origin.x = -200
//        cell.frame.origin.y = -600
        //cell.frame.origin = CGPoint(x: -600, y: -600)
//        UIView.animate(withDuration: 2) {
//            //cell.alpha = 1
            cell.backgroundColor = #colorLiteral(red: 1, green: 0.2756088437, blue: 0.3344119086, alpha: 1)
            cell.frame.size = CGSize.zero
//            //cell.frame.origin.x = 10
//            cell.frame.origin.y = CGFloat(indexPath.row)*cell.frame.size.height
//        }
        UIView.animate(withDuration: 3, animations: {
//            cell.frame.origin.y = CGFloat(indexPath.row)*cell.frame.size.height
            //cell.frame.origin = CGPoint(x: 10, y: CGFloat(indexPath.row)*cell.frame.size.height)
            cell.frame.size = CGSize(width: UIScreen.main.bounds.width-20, height: UIScreen.main.bounds.height/4)
        }) { (true) in
            UIView.animate(withDuration: 1, animations: {
                cell.backgroundColor = #colorLiteral(red: 0.5963398168, green: 1, blue: 0.2942222951, alpha: 1)
            })
        }
    }
    
}

