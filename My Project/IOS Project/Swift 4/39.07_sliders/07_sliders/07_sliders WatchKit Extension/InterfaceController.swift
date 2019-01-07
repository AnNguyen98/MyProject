//
//  InterfaceController.swift
//  07_sliders WatchKit Extension
//
//  Created by Zebra on 2017-06-21.
//  Copyright © 2017 Mammoth Interactive. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    
    @IBOutlet var exampleLabel: WKInterfaceLabel!
    @IBOutlet var mySizeSlider: WKInterfaceSlider!
    @IBOutlet var redSlider: WKInterfaceSlider!
    
    let myColors : [UIColor] = [.red, .white, .green]
    var fontSize : CGFloat = 12.0
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        mySizeSlider.setNumberOfSteps(16)
        let attrString = NSAttributedString(string: "I am size: \(fontSize)", attributes: [NSAttributedStringKey.fontAttributeName: UIFont.systemFont(ofSize: fontSize)])
        exampleLabel.setAttributedText(attrString)
    }
    
    @IBAction func sliderAction(_ value: Float) {
        let index = Int(value)
        exampleLabel.setTextColor(myColors[index])
    }
    
    @IBAction func sizeSlider(_ value: Float) {
        fontSize = CGFloat(value)
        let attrString = NSAttributedString(string: "I am size: \(fontSize)", attributes: [NSAttributedStringKey.fontAttributeName: UIFont.systemFont(ofSize: fontSize)])
        exampleLabel.setAttributedText(attrString)
    }
    
    @IBAction func bottomSliderAction(_ value: Float) {
        let val = value + 1
        redSlider.setValue(val)
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
