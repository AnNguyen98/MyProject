//
//  ViewController.swift
//  LuyenTapJsonWebservice
//
//  Created by An Nguyễn on 4/10/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //https://scabbiest-deed.000webhostapp.com/ios.json
        
        let url:URL = URL(string: "https://scabbiest-deed.000webhostapp.com/ios.json")!
        do{
            let data = try Data(contentsOf: url)
            let dic1:Dictionary<String,AnyObject> = try JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions.allowFragments) as! Dictionary<String, AnyObject>
            var khoaHoc:Array<Dictionary<String,AnyObject>> = Array<Dictionary<String,AnyObject>>()
            khoaHoc = dic1["khoahoc"] as! Array<Dictionary<String,AnyObject>>
            var Khoa:Array<Dictionary<String,AnyObject>> = Array<Dictionary<String,AnyObject>>()
            for i in khoaHoc{
                Khoa.append(i["khoa"] as! Dictionary<String,AnyObject>)
            }
            var vidcon:Array<Array<Dictionary<String,AnyObject>>> = Array<Array<Dictionary<String,AnyObject>>>()
            for i in Khoa{
                let arrvidcon:Array<Dictionary<String,AnyObject>> = i["vidcon"] as! Array<Dictionary<String,AnyObject>>
                vidcon.append(arrvidcon)
            }
            var ten:Array<AnyObject> = Array<AnyObject>()
            for i in vidcon{
                for j in i{
                    ten.append(j["ten"] as AnyObject)
                }
            }
            
            
            print(ten)
        }catch{}
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

