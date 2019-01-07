//
//  ViewController.swift
//  PhatNhacOnline1
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
        
        let url:URL = URL(string: "https://mp3.zing.vn/bai-hat/Cung-Anh-Ngoc-Dolil-Hagi-STee/ZW9A7W00.html")!
        
        do{
            let data1:Data = try Data(contentsOf: url)
//            do{
//                player = try AVAudioPlayer(data: data1)
//                player.prepareToPlay()
//                
//            }catch{print("sssss")}
        }catch{print("sssssdddddd")}
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

