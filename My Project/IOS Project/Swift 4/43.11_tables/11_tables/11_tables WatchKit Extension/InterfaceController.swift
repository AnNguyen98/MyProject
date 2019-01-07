//
//  InterfaceController.swift
//  11_tables WatchKit Extension
//
//  Created by Zebra on 2017-06-28.
//  Copyright © 2017 Mammoth Interactive. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var myTableOutlet: WKInterfaceTable!
    @IBOutlet var myLabel: WKInterfaceLabel!
    
    let numberOfLabelRows = 2
    let numberOfDateRows = 1
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        configureTable()
    }
    
    func configureTable() {
//        myTableOutlet.setNumberOfRows(numberOfLabelRows, withRowType: LabelRowController.identifier)
//        for row in 0..<myTableOutlet.numberOfRows {
//            let labelRowController = myTableOutlet.rowController(at: row) as! LabelRowController
//            labelRowController.setLabel(text: "Index# \(row)")
//        }
//
//        let indexToEndInsertionAt = numberOfLabelRows + numberOfDateRows
//        myTableOutlet.insertRows(at: IndexSet(numberOfLabelRows..<indexToEndInsertionAt), withRowType: DateRowController.identifier)
        myTableOutlet.setRowTypes([LabelRowController.identifier, DateRowController.identifier, LabelRowController.identifier, DateRowController.identifier])
        let totalEntries = 4
        
        for row in 0..<totalEntries {
            if let labelRowController = myTableOutlet.rowController(at: row) as? LabelRowController {
                labelRowController.setLabel(text: "Index \(row)")
            } else if let dateRowController = myTableOutlet.rowController(at: row) as? DateRowController {
                dateRowController.myDateOutlet.setTextColor(.green)
            }
        }
        
//        myTableOutlet.insertRows(at: IndexSet(0..<10), withRowType: LabelRowController.identifier)
//
//        myTableOutlet.removeRows(at: IndexSet(0..<8))
//
//        myTableOutlet.scrollToRow(at: 5)
        
        
    }
    
//    override func table(_ table: WKInterfaceTable, didSelectRowAt rowIndex: Int) {
//        myLabel.setText("Index tapped: \(rowIndex)")
//    }
//
    override func contextForSegue(withIdentifier segueIdentifier: String, in table: WKInterfaceTable, rowIndex: Int) -> Any? {
        if segueIdentifier == "selectedRow" {
            return "Label index: \(rowIndex)"
        } else if segueIdentifier == "selectedDateRow" {
            return Date()
        }
        return nil
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
