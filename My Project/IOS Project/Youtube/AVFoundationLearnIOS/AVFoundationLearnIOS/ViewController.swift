//
//  ViewController.swift
//  AVFoundationLearnIOS
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
    
        let path2:String = "/Users/macbook/Desktop/Bách Khoa/MP3/Anh Đã Quen Với Cô Đơn_Soobin Hoàng Sơn_-1075883799.mp3"
        let path:String = Bundle.main.path(forResource: "Anh Đang Nơi Đâu_Miu Lê_-1075506842", ofType: ".mp3")!
        let url:URL = URL(fileURLWithPath: path2)
        do{
            player = try AVAudioPlayer(contentsOf: url)
            player.play()
//            Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { (timer) in
//                //print(self.player.currentTime) //Lay tG Hien tai
//            })
            print(player.duration/60)
            player.play(atTime: 100)
            
        }catch{}
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

