//
//  ViewController.swift
//  2.1ChuyenManHinh
//
//  Created by An Nguyễn on 3/18/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBAction func btnClick(_ sender: Any) {
        let mhDich = storyboard?.instantiateViewController(withIdentifier: "MH") as! ViewController
       //    present(mhDich, animated: true, completion: nil)//Chuyen Man hinh
    
        if self.view.tag != 2{
            mhDich.view.tag = self.view.tag + 1
        }
        
        
        self.navigationController?.pushViewController(mhDich, animated: true)
       
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    override func viewWillAppear(_ animated: Bool) {
        switch self.view.tag {
        case 0:
            self.view.backgroundColor = UIColor.yellow
        case 1:
            self.view.backgroundColor = UIColor.red
        default :
            self.view.backgroundColor = UIColor.green
        }
    }
//    override func viewDidAppear(_ animated: Bool) {
//        <#code#>
//    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

