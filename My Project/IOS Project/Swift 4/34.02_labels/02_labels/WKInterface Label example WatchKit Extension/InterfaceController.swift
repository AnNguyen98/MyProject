//
//  InterfaceController.swift
//  WKInterface Label example WatchKit Extension
//
//  Created by Zebra on 2017-06-13.
//  Copyright © 2017 Mammoth Interactive. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    // My variables
    var bottomLabelFirstWord: String = "Hello"
    var bottomLabelSecondWord: String = "World!"
    var tappedAmount: Int = 0
    
    // IBOutlet variables
    @IBOutlet var myBottomLabel: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        self.initializeUI()
    }
    
    func initializeUI() {
        myBottomLabel.setText("Tap button to begin")
    }
    
    @IBAction func labelChangerButton() {
        tappedAmount += 1
        let myString : String = "Button tapped \(tappedAmount) times"
        let myAttributes : [NSAttributedStringKey: Any] =
            [ NSAttributedStringKey.foregroundColorAttributeName: UIColor.red,
              NSAttributedStringKey.fontAttributeName: UIFont.italicSystemFont(ofSize: 16)
              ]
        let myAttrString = NSAttributedString(string: myString, attributes: myAttributes)
        myBottomLabel.setAttributedText(myAttrString)
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
