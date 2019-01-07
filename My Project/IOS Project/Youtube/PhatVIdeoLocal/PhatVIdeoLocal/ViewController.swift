//
//  ViewController.swift
//  PhatVIdeoLocal
//
//  Created by An Nguyễn on 3/25/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    var layerViewController:AVPlayerViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        layerViewController = AVPlayerViewController()
        //let path:String = Bundle.main.path(forResource: "1. Syntax Parser, Execution Context, Lexical Environment là gì", ofType: "mp4")!
        //let url:URL = URL(fileURLWithPath: path)
        let url1:URL = URL(string: "http://khoaphamvietnam.esy.es/Video/SING%20-%20Teaser%20Trailer.mp4")!
        layerViewController.player = AVPlayer(url: url1)
//        present(layerViewController, animated: true) {
//            self.layerViewController.player?.play()
//        }

        view.addSubview(layerViewController.view)
        layerViewController.view.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        layerViewController.player?.play()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

