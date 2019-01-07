//
//  ViewController.swift
//  DocDuLieuWebsite
//
//  Created by An Nguyễn on 4/23/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let url = NSURL(string: "https://vnexpress.net/")
        
        if url != nil {
            let task = URLSession.shared.dataTask(with: url! as URL, completionHandler: { (data, response, error) -> Void in
                print(data as Any)
                
                if error == nil {
                    
                    let urlContent = NSString(data: data!, encoding: String.Encoding.utf8.rawValue) as NSString!
                    
                    print(urlContent as Any)
                }
            })
            task.resume()
        }

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

