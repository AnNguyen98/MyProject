//
//  ViewController.swift
//  AVFoundation_Buoi26
//
//  Created by An Nguyễn on 3/23/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player:AVAudioPlayer!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

       // let path:String = Bundle.main.path(forResource: "Anh Đang Nơi Đâu_Miu Lê", ofType: ".mp3")!
        //let url:URL = URL(fileURLWithPath: path)
        
        let url1:URL = URL(fileURLWithPath: "/Users/macbook/Desktop/Bách Khoa/MP3/Anh Đang Nơi Đâu_Miu Lê_-1075506842.mp3")
        do {
            player = try AVAudioPlayer(contentsOf: url1)
            player.play()
        }catch{
            print("Loi Phat nhac!")
        }
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

