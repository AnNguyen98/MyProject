//
//  InterfaceController.swift
//  05_buttons WatchKit Extension
//
//  Created by Zebra on 2017-06-16.
//  Copyright © 2017 Mammoth Interactive. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var myLowerButton: WKInterfaceButton!
    @IBOutlet var btn1: WKInterfaceButton!
    @IBOutlet var btn2: WKInterfaceButton!
    @IBOutlet var btn3: WKInterfaceButton!
    @IBOutlet var btn4: WKInterfaceButton!
    @IBOutlet var btn5: WKInterfaceButton!
    
    var buttonTapped : Bool = false
    var allBtns : [WKInterfaceButton]?
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        self.setUpLowerButton()
        allBtns = [btn1, btn2, btn3, btn4, btn5]
        self.initGameButtons()
    }
    
    func disableButtons(backgroundColor: UIColor?) {
        for btn in allBtns! {
            btn.setEnabled(false)
            btn.setBackgroundColor(backgroundColor)
        }
    }
    
    func initGameButtons() {
        disableButtons(backgroundColor: nil)
        btn1.setEnabled(true)
    }
    
    @IBAction func resetGameButton() {
        initGameButtons()
    }
    
    @IBAction func btn1Action() {
        correctAnswer(correctButton: btn1, nextBtn1: btn2, nextBtn2: btn3)
    }
    
    @IBAction func btn2Action() {
        wrongAnswer(button: btn2)
    }
    
    @IBAction func btn3Action() {
        correctAnswer(correctButton: btn3, nextBtn1: btn4, nextBtn2: btn5)
    }
    
    @IBAction func btn4Action() {
        // Victory
        disableButtons(backgroundColor: .green)
    }
    
    @IBAction func btn5Action() {
        wrongAnswer(button: btn5)
    }
    
    func wrongAnswer(button: WKInterfaceButton) {
        disableButtons(backgroundColor: nil)
        button.setBackgroundColor(UIColor.red)
    }
    
    func correctAnswer(correctButton: WKInterfaceButton, nextBtn1: WKInterfaceButton, nextBtn2: WKInterfaceButton) {
        correctButton.setEnabled(false)
        correctButton.setBackgroundColor(UIColor.green)
        nextBtn1.setEnabled(true)
        nextBtn2.setEnabled(true)
    }
    
    func setUpLowerButton() {
        let attrString = attrStringCreator(str: "Tap for something cool", color: UIColor.white, font: UIFont.systemFont(ofSize: 16))
        myLowerButton.setAttributedTitle(attrString)
    }
    
    func alterLowerButton() {
        let attrString = attrStringCreator(str:"Hello world", color: UIColor.purple, font: UIFont.boldSystemFont(ofSize: 20))
        myLowerButton.setAttributedTitle(attrString)
    }
    
    func attrStringCreator(str: String, color: UIColor, font: UIFont) -> NSAttributedString {
        let myString = str
        let myAttributes : [ NSAttributedStringKey : Any ] = [ NSAttributedStringKey.foregroundColorAttributeName: color,
              NSAttributedStringKey.fontAttributeName: font]
        let myAttrString = NSAttributedString(string: myString, attributes: myAttributes)
        return myAttrString
    }
    
    @IBAction func lowerButtonAction() {
        buttonTapped = !buttonTapped
        if buttonTapped {
            alterLowerButton()
        } else {
            setUpLowerButton()
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
