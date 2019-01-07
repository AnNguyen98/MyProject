//
//  ViewController.swift
//  AVFoundationPhatNhacOnline
//
//  Created by An Nguyễn on 3/25/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var player:AVAudioPlayer!
        let url:URL = URL(string:"https://mp3.zing.vn/bai-hat/Cung-Anh-Ngoc-Dolil-Hagi-STee/ZW9A7W00.html")!
        do{
            let data = try Data(contentsOf: url)
            do{
            player = try AVAudioPlayer(data: data)
                player.play()
            }catch{}
            
        }catch{
            print("Loi cmn roi!")
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

