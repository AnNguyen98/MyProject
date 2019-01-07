//
//  ViewController.swift
//  Lam1LucNhieuMainStoryboard
//
//  Created by An Nguyễn on 2/7/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var btnNextMH: UIButton!
    @IBAction func btnNext(_ sender: Any) {
        //tao ViewController
        let vc = UIStoryboard(name: "Storyboard1", bundle: nil).instantiateViewController(withIdentifier: "mh2")
        
        //Dung present
       // present(vc, animated: true, completion: nil)
        
        //Dung Nav
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    

}

