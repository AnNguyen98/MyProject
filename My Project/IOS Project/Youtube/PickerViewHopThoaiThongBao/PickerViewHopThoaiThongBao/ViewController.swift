//
//  ViewController.swift
//  PickerViewHopThoaiThongBao
//
//  Created by An Nguyễn on 3/22/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let pickerView:UIPickerView = UIPickerView()
    let buttonAlert:UIButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        pickerView.delegate = self
        pickerView.dataSource = self
        buttonAlert.frame = CGRect(x: 0, y: 0, width: 100, height: 45)
        buttonAlert.backgroundColor = UIColor.red
        buttonAlert.addTarget(self, action: #selector(Click), for: .touchUpInside)
        view.addSubview(buttonAlert)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @objc func Click(){
        
        let alert = UIAlertController(title: "Thông báo", message: "\n\n\n\n", preferredStyle: .actionSheet)
        
        alert.view.addSubview(pickerView)
        
        present(alert, animated: true) {
            self.pickerView.frame = CGRect(x: self.view.frame.width/2 - 50, y: 0, width: 100, height: 200)
        }
    }

}
extension ViewController:UIPickerViewDataSource,UIPickerViewDelegate{
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 100
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
//    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
//        <#code#>
//    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return String(row)
    }
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 200
    }
}
