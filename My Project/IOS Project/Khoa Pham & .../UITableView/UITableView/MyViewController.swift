//
//  MyViewController.swift
//  UITableView
//
//  Created by An Nguyễn on 1/21/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class MyViewController: UIViewController {

    @IBOutlet weak var imgHinhMH2: UIImageView!
    var img:UIImage!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        imgHinhMH2.image = img
        imgHinhMH2.clipsToBounds = true
        imgHinhMH2.contentMode = .scaleAspectFill
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
