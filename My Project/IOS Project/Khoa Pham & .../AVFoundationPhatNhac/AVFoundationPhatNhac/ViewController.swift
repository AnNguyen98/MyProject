//
//  ViewController.swift
//  AVFoundationPhatNhac
//
//  Created by An Nguyễn on 1/28/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var sldTGChay: UISlider!
    @IBAction func sldVolum(_ sender: Any) {
        player.volume = sldVolum.value
    }
    @IBOutlet weak var sldVolum: UISlider!
    
    var player:AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let path:String = Bundle.main.path(forResource: "Cam-Nang-Suni-Ha-Linh-RTee", ofType: "mp3")!
        let url1:URL = URL(fileURLWithPath: path)
        
        //let url:URL = URL(fileURLWithPath: "/Users/macbook/Desktop/Bách Khoa/MP3/2AM_JustaTee, BigDaddy_-1075370264.mp3")
        do{
            player = try AVAudioPlayer(contentsOf: url1)
            player.play()
            Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { (timer) in
                self.sldTGChay.value = Float(self.player.currentTime)
            })
            print("Thoi luong bai hat : \(player.duration)")
            sldTGChay.maximumValue = Float(player.duration)
            sldVolum.maximumValue = 10
            
        }catch{}
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

