//
//  InterfaceController.swift
//  13_gestures WatchKit Extension
//
//  Created by Zebra on 2017-07-04.
//  Copyright © 2017 Mammoth Interactive. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    //MARK: Tap gesture outlets
    @IBOutlet var tapGroupOutlet: WKInterfaceGroup!
    @IBOutlet var tapLabelOutlet: WKInterfaceLabel!
    
    //MARK: Swipe gesture outlets
    @IBOutlet var swipeGroupOutlet: WKInterfaceGroup!
    @IBOutlet var swipeLabelOutlet: WKInterfaceLabel!
    @IBOutlet var swipeGestureOutlet: WKSwipeGestureRecognizer!
    
    //MARK: Long press gesture outlets
    @IBOutlet var longPressGroupOutlet: WKInterfaceGroup!
    @IBOutlet var longPressLabelOutlet: WKInterfaceLabel!
    @IBOutlet var longPressGestureOutlet: WKLongPressGestureRecognizer!
    
    //MARK: Pan gesture outlets
    @IBOutlet var panGestureGroupOutlet: WKInterfaceGroup!
    @IBOutlet var panGestureLabelOutlet: WKInterfaceLabel!
    
    
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        
    }
    
    override func didAppear() {
        swipeGestureOutlet.direction = [.up, .down]
        let interval : Float = 1.0
        longPressGestureOutlet.minimumPressDuration = CFTimeInterval(interval)
        longPressGestureOutlet.allowableMovement = CGFloat(100)
    }
    
    @IBAction func tapGestureAction(_ sender: Any) {
        tapLabelOutlet.setText("Tapped")
        tapGroupOutlet.setBackgroundColor(.green)
    }
    
    @IBAction func swipeGestureAction(_ sender: Any) {
        swipeLabelOutlet.setText("Swiped")
        swipeGroupOutlet.setBackgroundColor(.orange)
    }
    
    @IBAction func longPressGestureAction(_ sender: Any) {
        guard let sender = sender as? WKLongPressGestureRecognizer else {
            return
        }
        if sender.state == WKGestureRecognizerState.began {
            longPressGroupOutlet.setBackgroundColor(.cyan)
            longPressLabelOutlet.setText("Long press started")
        } else if sender.state == WKGestureRecognizerState.ended {
            longPressGroupOutlet.setBackgroundColor(.green)
            longPressLabelOutlet.setText("Long press finished")
        }
        
        
        
    }
    
    
    @IBAction func panGestureAction(_ sender: WKPanGestureRecognizer) {
        let coordinates : CGPoint = sender.translationInObject()
        let velocity: CGPoint = sender.velocityInObject()
        panGestureLabelOutlet.setText("\(velocity)")
        if coordinates.x > 0 && velocity.x > 50 {
            panGestureGroupOutlet.setBackgroundColor(.green)
        } else if coordinates.y < 0 && velocity.y > 50 {
            panGestureGroupOutlet.setBackgroundColor(.red)
        }
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
