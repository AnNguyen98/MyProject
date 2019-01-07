//
//  ViewController.swift
//  Buoi28AVFoundation
//
//  Created by An Nguyễn on 3/25/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {
    
    let avPlayer:AVPlayerViewController = AVPlayerViewController()
    override func viewDidLoad() {
        super.viewDidLoad()
        let button:UIButton = UIButton(frame: CGRect(x: 100, y: 100, width: 200, height: 50))
        button.backgroundColor = UIColor.blue
        button.addTarget(self, action: #selector(onClick), for: UIControlEvents.touchUpInside)
        
        // Do any additional setup after loading the view, typically from a nib.
        
//        let path:String = Bundle.main.path(forResource: "a", ofType: "mp4")!
//        let url:URL = URL(fileURLWithPath: path)

        //
        
        let url:URL = URL(string: "https://scabbiest-deed.000webhostapp.com/HocAVFoundation/javascript.mp4")!
        
        avPlayer.player = AVPlayer(url: url)
        //view.addSubview(avPlayer.view)
        //avPlayer.view.frame = view.frame
        //avPlayer.player?.play()
        
        view.addSubview(button)

    }
    @objc func onClick(){
        present(avPlayer, animated: true) {
            self.avPlayer.player?.play()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

