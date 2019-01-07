//
//  InterfaceController.swift
//  06_switches WatchKit Extension
//
//  Created by Zebra on 2017-06-20.
//  Copyright © 2017 Mammoth Interactive. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var upperSwitchOutlet: WKInterfaceSwitch!
    @IBOutlet var lowerSwitchOutlet: WKInterfaceSwitch!
    @IBOutlet var evenLowerSwitchOutlet: WKInterfaceSwitch!
    @IBOutlet var lightsIndicator: WKInterfaceLabel!
    @IBOutlet var lightSwitcherOutlet: WKInterfaceSwitch!
    
    var lightsOnText : NSAttributedString?
    var lightsOffText : NSAttributedString?
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        self.initUI()
    }
    
    func initUI() {
        lowerSwitchOutlet.setTitle("Lower switch")
        lowerSwitchOutlet.setOn(false)
        lowerSwitchOutlet.setEnabled(false)
        upperSwitchOutlet.setOn(false)
        evenLowerSwitchOutlet.setEnabled(false)
        lightsIndicator.setTextColor(.red)
        lightSwitcherOutlet.setOn(false)
        lightsOnText = NSAttStrCreator(text: "On", color: .green)
        lightsOffText = NSAttStrCreator(text: "Off", color: .red)
    }
    
    func NSAttStrCreator(text: String, color: UIColor) -> NSAttributedString {
        return NSAttributedString(string: text, attributes: [.foregroundColorAttributeName: color, .fontAttributeName: UIFont.boldSystemFont(ofSize: 16)])
    }
    
    @IBAction func upperSwitchAction(_ value: Bool) {
        value ? lowerSwitchOutlet.setEnabled(true) :
            lowerSwitchOutlet.setEnabled(false)
    }
    
    @IBAction func middleSwitchAction(_ value: Bool) {
        value ? evenLowerSwitchOutlet.setEnabled(true) :
            evenLowerSwitchOutlet.setEnabled(false)
    }
    
    @IBAction func lightSwitcherAction(_ value: Bool) {
        value ? lightsIndicator.setAttributedText(lightsOnText) :
            lightsIndicator.setAttributedText(lightsOffText)
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
