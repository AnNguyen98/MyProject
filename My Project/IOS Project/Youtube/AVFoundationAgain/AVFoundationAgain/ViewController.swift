//
//  ViewController.swift
//  AVFoundationAgain
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
        
        
//        let path:String  = Bundle.main.path(forResource: "ADND", ofType: "mp3")!
//        let url:URL = URL(fileURLWithPath: path)
        let url1:URL = URL(string: "https://scabbiest-deed.000webhostapp.com/HocAVFoundation/ADND.mp3")!
        //https://scabbiest-deed.000webhostapp.com/HocAVFoundation/ADND.mp3
        //https://scabbiest-deed.000webhostapp.com/HocAVFoundation/Anh%20Đang%20Nơi%20Đâu_Miu%20Lê_-1075506842.mp3
        do{
            let data:Data = try Data(contentsOf: url1)
            do{
                player =  try AVAudioPlayer(data: data)
                player.volume = 1
                player.play()
            }catch{}
            
            
        }catch{}
       
        
//        let url:URL = URL(string: "<#T##String#>")!
//        do{
//        player = try AVAudioPlayer(data: <#T##Data#>)
//        }catch{print("aaaa")}
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

