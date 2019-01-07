//
//  LabelDetailInterfaceController.swift
//  11_tables WatchKit Extension
//
//  Created by Zebra on 2017-06-30.
//  Copyright © 2017 Mammoth Interactive. All rights reserved.
//

import WatchKit
import Foundation


class LabelDetailInterfaceController: WKInterfaceController {

    @IBOutlet var labelDetailOutlet: WKInterfaceLabel!
    @IBOutlet var dateDetailOutlet: WKInterfaceDate!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        labelDetailOutlet.setHidden(true)
        dateDetailOutlet.setHidden(true)
        
        if let myString = context as? String {
            labelDetailOutlet.setHidden(false)
            labelDetailOutlet.setText(myString)
        } else {
            dateDetailOutlet.setHidden(false)
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
