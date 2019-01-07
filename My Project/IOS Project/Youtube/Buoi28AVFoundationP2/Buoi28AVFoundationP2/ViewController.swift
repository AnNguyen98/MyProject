//
//  ViewController.swift
//  Buoi28AVFoundationP2
//
//  Created by An Nguyễn on 3/25/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class ViewController: UIViewController {
    
    let avPlayer:AVPlayerViewController = AVPlayerViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let path:String  = Bundle.main.path(forResource: "aaa", ofType: "mp4")!
        let url:URL = URL(fileURLWithPath: path)
        avPlayer.player = AVPlayer(url: url)
        avPlayer.view.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        
        avPlayer.showsPlaybackControls = false
        avPlayer.player?.volume = 0
        avPlayer.videoGravity = AVLayerVideoGravity.resizeAspectFill.rawValue
        avPlayer.view.isUserInteractionEnabled = false
        
        view.addSubview(avPlayer.view)
        avPlayer.player?.play()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


