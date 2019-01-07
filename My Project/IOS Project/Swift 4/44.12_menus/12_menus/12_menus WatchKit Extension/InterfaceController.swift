//
//  InterfaceController.swift
//  12_menus WatchKit Extension
//
//  Created by Zebra on 2017-07-04.
//  Copyright © 2017 Mammoth Interactive. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var labelOutlet: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        addMenuItem(with: .maybe, title: "Maybe", action: #selector(InterfaceController.maybeFunc))
        addMenuItem(withImageNamed: "yep", title: "OK", action: #selector(InterfaceController.okWasTapped))
        addMenuItem(withImageNamed: "nope", title: "No", action: #selector(InterfaceController.noWasTapped))
    }
    
    @objc func maybeFunc() {
        labelOutlet.setText("Maybe")
    }
    
    @objc func okWasTapped(){
        labelOutlet.setText("OK")
    }
    
    @objc func noWasTapped(){
        labelOutlet.setText("Nope")
    }
    
    @IBAction func buttonWasTapped() {
        clearAllMenuItems()
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
