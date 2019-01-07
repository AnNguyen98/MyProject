//
//  ViewController.swift
//  BaiXXX
//
//  Created by An Nguyễn on 3/25/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player:AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let url:URL = URL(string: "https://mp3.zing.vn/album/Nhac-Moi-Cuoi-Tuan-Various-Artists/ZOB86ZIC.html?st=9")!
        do{
            let data:Data = try Data(contentsOf: url)
            do{
            player = try AVAudioPlayer(data: data)
            }            catch{print("hhhhehe")}

        }catch{print("dcccccc")}
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

