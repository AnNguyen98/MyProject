//
//  MyUIViewController2.swift
//  ChuyenManHinh
//
//  Created by An Nguyễn on 3/18/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class MyUIViewController2: UIViewController {

   
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func btnBack(_ sender: Any) {
        
        let st1 = storyboard?.instantiateViewController(withIdentifier: "MH1")
        //self.navigationController?.pushViewController(st1!, animated: true)
        self.navigationController?.popViewController(animated: true)
        
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
