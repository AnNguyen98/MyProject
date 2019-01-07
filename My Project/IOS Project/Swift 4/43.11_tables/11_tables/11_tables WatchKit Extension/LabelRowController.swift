//
//  LabelRowController.swift
//  11_tables WatchKit Extension
//
//  Created by Zebra on 2017-06-29.
//  Copyright © 2017 Mammoth Interactive. All rights reserved.
//

import WatchKit

class LabelRowController: NSObject {

    @IBOutlet var rowLabelOutlet: WKInterfaceLabel!
    
    static let identifier = "LabelRow"
    
    func setLabel(text: String) {
        rowLabelOutlet.setText(text)
    }
}
