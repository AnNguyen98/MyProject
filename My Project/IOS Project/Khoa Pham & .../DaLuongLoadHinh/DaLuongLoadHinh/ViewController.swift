//
//  ViewController.swift
//  DaLuongLoadHinh
//
//  Created by An Nguyễn on 1/7/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgHinh: UIImageView!
    @IBAction func abtnLoad(_ sender: Any) {
        //https://kenh14cdn.com/2017/img-0233-copy-1500372915251.jpg
        let url:URL = URL(string: "https://kenh14cdn.com/2017/img-0233-copy-1500372915251.jpg")!
        let queue = DispatchQueue(label: "queue")
        
/* queue.async la bat dong bo
   queue.sync la dong bo ko da tien trinh
         disPatchQueue.main.sync la bac vi dung tu queue chinh ko the xin dong bo lai dc khoa cop xe may maf bo chia khoa trong cop
 */
        queue.async {
            do{
                let data:Data = try Data(contentsOf: url)

                DispatchQueue.main.async {
                    self.imgHinh.image = UIImage(data: data)
                }
    
            }catch{}
        }
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

