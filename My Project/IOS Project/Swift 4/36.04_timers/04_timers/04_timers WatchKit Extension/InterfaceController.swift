//
//  InterfaceController.swift
//  04_timers WatchKit Extension
//
//  Created by Zebra on 2017-06-15.
//  Copyright © 2017 Mammoth Interactive. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    // MARK: Outlet vars
    @IBOutlet var myTimer: WKInterfaceTimer!
    @IBOutlet var startStopButton: WKInterfaceButton!
    @IBOutlet var elapsedTimer: WKInterfaceTimer!
    
    // MARK: My vars
    var duration : TimeInterval = 0.0
    var myDate : Date?
    var isStarted : Bool = false
    var elapsedTime : TimeInterval = 0.0
    var loopTimer = Timer()
    let colors : [ UIColor ] =
        [ UIColor.red,
          UIColor.orange,
          UIColor.yellow,
          UIColor.green,
          UIColor.blue,
          UIColor.purple]
    var loopCount : Int = 0
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        startStopButton.setBackgroundColor(UIColor.green)
    }
    
    @IBAction func startTimerAction() {
        isStarted = !isStarted
        if isStarted {
            myDate = Date()
            setTimer(timer: myTimer, interval: -duration)
            setTimer(timer: elapsedTimer, interval: -elapsedTime)
            startStopButton.setTitle("Stop timer")
            startStopButton.setBackgroundColor(UIColor.red)
            loopTimer(interval: 3)
        }
        else {
            let stoppedDate = Date()
            duration += stoppedDate.timeIntervalSince(myDate!)
            elapsedTime += stoppedDate.timeIntervalSince(myDate!)
            resetUI(timer: myTimer)
            resetUI(timer: elapsedTimer)
        }
    }
    
    func resetUI(timer: WKInterfaceTimer) {
        timer.stop()
        loopTimer.invalidate()
        startStopButton.setTitle("Start timer")
        startStopButton.setBackgroundColor(UIColor.green)
    }
    
    func loopTimer(interval: TimeInterval) {
        if loopTimer.isValid {
            loopTimer.invalidate()
        }
        loopTimer = Timer.scheduledTimer(
            timeInterval: interval,
            target: self,
            selector: #selector(self.loopTimerEnd),
            userInfo: nil,
            repeats: true)
    }
    
    @objc func loopTimerEnd() {
        if loopCount > 5 {
            loopCount = 0
        }
        myTimer.setTextColor(colors[loopCount])
        loopCount += 1
    }
    
    func setTimer(timer: WKInterfaceTimer, interval: TimeInterval) {
        let time = Date(timeIntervalSinceNow: interval)
        timer.setDate(time)
        timer.start()
    }
    
    @IBAction func resetTimerAction() {
        duration = 0.0
        myTimer.setDate(Date())
        resetUI(timer: myTimer)
        loopCount = 0
        myTimer.setTextColor(UIColor.white)
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
