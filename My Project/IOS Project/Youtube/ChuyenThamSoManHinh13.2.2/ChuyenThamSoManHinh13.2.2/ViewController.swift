//
//  ViewController.swift
//  ChuyenThamSoManHinh13.2.2
//
//  Created by An Nguyễn on 3/19/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

let bien = UserDefaults()

class ViewController: UIViewController {
    var LG:Bool!
    var passUser:String!
    var nameUser:String!
    
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtPass: UITextField!
    @IBAction func ChuyenManHinhBtn(_ sender: Any) {
        if !txtPass.text!.isEmpty && !txtName.text!.isEmpty{
            bien.set(txtName.text!, forKey: "nameUser")
            let st = storyboard?.instantiateViewController(withIdentifier: "MH2") as! ViewController1
            //present(st, animated: true, completion: nil)
            self.navigationController?.pushViewController(st, animated: true)
        }
        if txtPass.text! == "123" && txtName.text! == "an"{
            bien.set(true, forKey: "OK")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if bien.object(forKey: "OK") != nil {
            LG = bien.object(forKey: "OK") as! Bool
        }
        if bien.object(forKey: "nameUser") != nil{
            txtName.text = bien.object(forKey: "nameUser") as? String
        }
        if (LG) != nil && LG{
            let st = storyboard?.instantiateViewController(withIdentifier: "MH2") as! ViewController1
            //present(st, animated: true, completion: nil)
            self.navigationController?.pushViewController(st, animated: true)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

