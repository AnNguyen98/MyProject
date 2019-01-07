//
//  ViewController.swift
//  PhatNhacOnline
//
//  Created by An Nguyễn on 3/24/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player:AVAudioPlayer  = AVAudioPlayer()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        //https://scabbiest-deed.000webhostapp.com/HocAVFoundation/Anh%20Đang%20Nơi%20Đâu_Miu%20Lê_-1075506842.mp3
        
        let url:URL = URL(string: "https://mp3.zing.vn/bai-hat/Cung-Anh-Ngoc-Dolil-Hagi-STee/ZW9A7W00.html")!
//        do{
//            let data1:Data = try Data(contentsOf: url)
//            do{
//                player = try AVAudioPlayer(data: data1)
//                player.play()
//            }catch{
//                print("Looooo")
//            }
//        }catch{print("Loiii")}

//        do{
//        player = try AVAudioPlayer(contentsOf: url)
//        }catch{print("aaaaa")}

        do{
            let data:Data = try Data(contentsOf: url)
            do{
                player = try AVAudioPlayer(data: data)
            }catch{print("aaa")}
        }catch{print("ssss")}
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

