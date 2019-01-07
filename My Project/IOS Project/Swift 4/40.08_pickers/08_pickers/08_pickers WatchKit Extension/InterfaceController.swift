//
//  InterfaceController.swift
//  08_pickers WatchKit Extension
//
//  Created by Zebra on 2017-06-22.
//  Copyright © 2017 Mammoth Interactive. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var myPicker: WKInterfacePicker!
    @IBOutlet var mySecondPicker: WKInterfacePicker!
    @IBOutlet var myStackPicker: WKInterfacePicker!
    @IBOutlet var myLabel: WKInterfaceLabel!
    @IBOutlet var loadingPicker: WKInterfacePicker!
    @IBOutlet var loadingGroup: WKInterfaceGroup!
    
    
    var numbers = 1...50
    let loadingImagesTotal = 5
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        self.initListPickers()
        let item1 = WKPickerItem()
        item1.contentImage = WKImage(imageName: "red")
        
        let item2 = WKPickerItem()
        item2.contentImage = WKImage(imageName: "green")
        
        let item3 = WKPickerItem()
        item3.contentImage = WKImage(imageName: "star")
        
        let itemsArray : [WKPickerItem] = [item1, item2, item3]
        
        myStackPicker.setItems(itemsArray)
        
        // Images and loading picker
        
        let picIndexes = 0..<loadingImagesTotal
        let loadingPickerItems : [WKPickerItem] = picIndexes.map {
            let item = WKPickerItem()
            item.contentImage = WKImage(imageName: "percent\($0)")
            return item
        }
        loadingPicker.setItems(loadingPickerItems)
        
        let loadingGroupImages : [UIImage] = picIndexes.map {
            let image = UIImage(named: "loading\($0)")
            return image!
        }
        
        let progressImages = UIImage.animatedImage(with: loadingGroupImages, duration: 0.0)
        
        loadingGroup.setBackgroundImage(progressImages)
        loadingPicker.setCoordinatedAnimations([loadingGroup])
        
    }
    
    
    func initListPickers() {
        let myItem1 = WKPickerItem()
        myItem1.title = "Test item 1"
        myItem1.caption = "Test caption 1"
        myItem1.accessoryImage = WKImage(imageName: "green")
    
        let myItem2 = WKPickerItem()
        myItem2.title = "Test item 2"
        myItem2.caption = "Test caption 2"
        myItem2.accessoryImage = WKImage(imageName: "red")
        let pickerItems : [WKPickerItem] = [myItem1, myItem2]
        
        myPicker.setItems(pickerItems)
    
        let picker2Items : [WKPickerItem] = numbers.map{
        let item = WKPickerItem()
        let spelledVal = NumberFormatter.localizedString(from: NSNumber(value: $0), number: .spellOut)
        item.title = "\($0)"
        item.caption = spelledVal
        return item
        }
        mySecondPicker.setItems(picker2Items)
    }
    
    @IBAction func upperPickerAction(_ value: Int) {
        myLabel.setText("\(value + 1)")
    }
    
    @IBAction func middlePickerAction(_ value: Int) {
        myLabel.setText("\(value + 1)")
        if value < 24 {
            myPicker.setSelectedItemIndex(0)
        } else {
            myPicker.setSelectedItemIndex(1)
            
        }
    }
    
    @IBAction func lowerPickerAction(_ value: Int) {
        myLabel.setText("\(value + 1)")
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
