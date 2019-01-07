//
//  ViewController.swift
//  14.2.1ChuyenManHinhKhoaPham
//
//  Created by An Nguyễn on 3/18/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

//var i:Int = 0

class ViewController: UIViewController {

    @IBAction func btnClick(_ sender: Any) {
        let st = storyboard?.instantiateViewController(withIdentifier: "mh") as! ViewController
         //i += 1
        if self.view.tag < 2 {
            st.view.tag = self.view.tag + 1
            self.navigationController?.pushViewController(st, animated: true)
        }else{
            //st.view.tag = self.view.tag - 1
            st.view.tag = 0
            let nav = storyboard?.instantiateViewController(withIdentifier: "nav") as! UINavigationController
            present(nav, animated: true, completion: nil)
            //self.navigationController?.popToRootViewController(animated: true)
//            self.navigationController?.dismiss(animated: <#T##Bool#>, completion: <#T##(() -> Void)?##(() -> Void)?##() -> Void#>)
        }
        //present(st, animated: true, completion: nil)
        //self.navigationController?.popViewController(animated: true)
        //self.navigationController?.popToViewController(<#T##viewController: UIViewController##UIViewController#>, animated: <#T##Bool#>)
        
        
        // push - pop ,present
        //present - dismiss
        
       
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //print("i = \(i)")
        
    }
    override func viewDidAppear(_ animated: Bool) {
        
    }
    override func viewWillAppear(_ animated: Bool) {
        print("tag \(self.view.tag) ")
        switch self.view.tag {
        case 0:
            view.backgroundColor = UIColor.red
        case 1:
            view.backgroundColor = UIColor.green
        default:
            //self.view.tag = -1
            self.view.backgroundColor = UIColor.yellow
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

