//
//  InterfaceController.swift
//  15_text_input WatchKit Extension
//
//  Created by Zebra on 2017-07-07.
//  Copyright © 2017 Mammoth Interactive. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var imageOutlet: WKInterfaceImage!
    @IBOutlet var labelOutlet: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    @IBAction func tapGestureAction(_ sender: Any) {
        presentTextInputController(withSuggestions: ["Yes", "No", "Maybe"], allowedInputMode: .allowAnimatedEmoji, completion: textInputCompleted)
    }
    
    func textInputCompleted(results: [Any]!) -> Void {
        if let textInput = results as? [String] {
            self.labelOutlet.setText(textInput[0])
        }
        if let animatedEmoji = results as? [NSData] {
            self.imageOutlet.setImageData(animatedEmoji[0] as Data)
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
