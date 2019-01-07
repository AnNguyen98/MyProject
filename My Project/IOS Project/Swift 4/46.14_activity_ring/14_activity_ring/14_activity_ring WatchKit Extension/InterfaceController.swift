//
//  InterfaceController.swift
//  14_activity_ring WatchKit Extension
//
//  Created by Zebra on 2017-07-06.
//  Copyright © 2017 Mammoth Interactive. All rights reserved.
//

import WatchKit
import Foundation
import HealthKit

class InterfaceController: WKInterfaceController {

    @IBOutlet var myActivityRingOutlet: WKInterfaceActivityRing!
    @IBOutlet var minutesExercisedGoalPicker: WKInterfacePicker!
    @IBOutlet var minutesExercisedTotalPicker: WKInterfacePicker!
    
    let summary = HKActivitySummary()
    // ring percent = value property quantity / goal value quantity
    let totalTime: Double = 5
    let goalTime: Double = 10
    let totalMinutes = 1...60
        
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        summary.activeEnergyBurned = HKQuantity(unit: .kilocalorie(), doubleValue: totalTime)
        summary.activeEnergyBurnedGoal = HKQuantity(unit: .kilocalorie(), doubleValue: goalTime)
        
        summary.appleStandHours = HKQuantity(unit: .count(), doubleValue: totalTime)
        summary.appleStandHoursGoal = HKQuantity(unit: .count(), doubleValue: goalTime)
        
        myActivityRingOutlet.setActivitySummary(summary, animated: false)
        initPickers()
        
    }
    
    func initPickers(){
        let pickerItems : [WKPickerItem] = totalMinutes.map {
            let item = WKPickerItem()
            item.title = "\($0)"
            item.caption = "\($0)"
            return item
        }
        minutesExercisedGoalPicker.setItems(pickerItems)
        minutesExercisedTotalPicker.setItems(pickerItems)
    }
    
    @IBAction func exerciseGoalPickerWasSelected(_ value: Int) {
        let val = Double(value + 1)
        summary.appleExerciseTimeGoal = HKQuantity(unit: .minute(), doubleValue: val)
        myActivityRingOutlet.setActivitySummary(summary, animated: false)
    }
    
    @IBAction func exerciseTotalPickerWasSelected(_ value: Int) {
        let val = Double(value + 1)
        summary.appleExerciseTime = HKQuantity(unit: .minute(), doubleValue: val)
        myActivityRingOutlet.setActivitySummary(summary, animated: false)
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
