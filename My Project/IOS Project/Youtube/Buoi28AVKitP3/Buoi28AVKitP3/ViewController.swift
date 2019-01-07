//
//  ViewController.swift
//  Buoi28AVKitP3
//
//  Created by An Nguyễn on 3/25/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var playerPlayer:AVPlayerLayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let url:URL = URL(string: "https://scabbiest-deed.000webhostapp.com/HocAVFoundation/javascript.mp4")!
        let player:AVPlayer = AVPlayer(url: url)
        playerPlayer = AVPlayerLayer(player: player)
        playerPlayer.player?.play()
        playerPlayer.videoGravity = AVLayerVideoGravity(rawValue: AVLayerVideoGravity.resizeAspectFill.rawValue)
        playerPlayer.frame = view.bounds
        view.layer.addSublayer(playerPlayer)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillLayoutSubviews() {
        print("viewWillLayoutSubviews \(view.frame.width)")
        playerPlayer.frame = view.bounds
    }
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        print("viewWillTransition \(view.frame.width)")
    }
    override func viewDidLayoutSubviews() {
        print("viewDidLayoutSubviews \(view.frame.width)")
    }

}

