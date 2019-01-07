//
//  ViewController.swift
//  DemoGet_API
//
//  Created by An Nguyễn on 3/12/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Alamofire.request("http://api.apixu.com/v1/current.json?key=1fd433adbf844be8a8a84711181203&q=Paris",parameters: nil)
            .responseJSON { (response) in
                print(response.request)
                print(response.response)
                print(response.data)
                print(response.result)
                
                if let JSON = response.result.value{
                    print("JSON : \(JSON)")
                }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

