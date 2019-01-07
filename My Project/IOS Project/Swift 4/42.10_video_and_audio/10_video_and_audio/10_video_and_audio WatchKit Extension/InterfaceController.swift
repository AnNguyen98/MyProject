//
//  InterfaceController.swift
//  10_video_and_audio WatchKit Extension
//
//  Created by Zebra on 2017-06-27.
//  Copyright © 2017 Mammoth Interactive. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var myMovieOutlet: WKInterfaceMovie!
    @IBOutlet var myOtherMovieOutlet: WKInterfaceMovie!
    @IBOutlet var myInlineMovieOutlet: WKInterfaceInlineMovie!
    
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        let myMovieURL = Bundle.main.url(forResource: "apollo", withExtension: "mov")
        myMovieOutlet.setMovieURL(myMovieURL!)
        
        let myAudioURL = Bundle.main.url(forResource: "hello", withExtension: "m4a")
        myOtherMovieOutlet.setPosterImage(WKImage(imageName: "ok"))
        myOtherMovieOutlet.setMovieURL(myAudioURL!)
        
        myInlineMovieOutlet.setMovieURL(myMovieURL!)
        myInlineMovieOutlet.setPosterImage(WKImage(imageName: "ok"))
    }
    
    @IBAction func playButtonAction() {
        myInlineMovieOutlet.play()
    }
    
    @IBAction func pauseButtonAction() {
        myInlineMovieOutlet.pause()
    }
    
    
    @IBAction func restartButtonAction() {
        myInlineMovieOutlet.playFromBeginning()
    }
    
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
