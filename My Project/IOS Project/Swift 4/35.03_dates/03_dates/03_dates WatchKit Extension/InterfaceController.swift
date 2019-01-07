//
//  InterfaceController.swift
//  03_dates WatchKit Extension
//
//  Created by Zebra on 2017-06-14.
//  Copyright © 2017 Mammoth Interactive. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    // MARK: Calendar and timezone constants
    let buddhistCal = Calendar(identifier: .buddhist)
    let persianCal = Calendar(identifier: .persian)
    let gregorianCal = Calendar(identifier: .gregorian)
    let britishTimeZone = TimeZone(abbreviation: "BST")
    
    // MARK: Outlet vars
    @IBOutlet var middleDateObj: WKInterfaceDate!
    @IBOutlet var lowerDateObj: WKInterfaceDate!
    @IBOutlet var localDateObj: WKInterfaceDate!
    @IBOutlet var ukDateObj: WKInterfaceDate!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        middleDateObj.setCalendar(buddhistCal)
        self.setUpLowerDates()
    }
    
    func setUpLowerDates() {
        localDateObj.setCalendar(gregorianCal)
        ukDateObj.setCalendar(gregorianCal)
        ukDateObj.setTimeZone(britishTimeZone)
    }
    
    @IBAction func topButtonAction() {
        lowerDateObj.setCalendar(persianCal)
    }
    
    
    @IBAction func bottomButtonAction() {
        lowerDateObj.setCalendar(nil)
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
