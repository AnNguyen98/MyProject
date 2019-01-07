//
//  ViewController.swift
//  PickerViewDemo
//
//  Created by An Nguyễn on 3/22/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let images:Array<UIImage> = [#imageLiteral(resourceName: "image1"),#imageLiteral(resourceName: "image2"),#imageLiteral(resourceName: "image3"),#imageLiteral(resourceName: "image4"),#imageLiteral(resourceName: "image5"),#imageLiteral(resourceName: "image6"),#imageLiteral(resourceName: "image7"),#imageLiteral(resourceName: "image8"),#imageLiteral(resourceName: "image9"),#imageLiteral(resourceName: "image10"),#imageLiteral(resourceName: "image11")]
    
    var timer = Timer()
    @IBOutlet weak var myPicker: UIPickerView!
    @IBOutlet weak var imgHinh: UIImageView!
    @IBOutlet weak var imgContrantRight: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imgContrantRight.constant = view.frame.width/4
        myPicker.delegate = self
        myPicker.dataSource = self
        myPicker.selectedRow(inComponent: 0)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
extension ViewController:UIPickerViewDelegate,UIPickerViewDataSource{
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return images.count
    }
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 300
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
//        UIView.animate(withDuration: 1, animations: {
//            self.imgHinh.layer.transform = CATransform3DMakeTranslation(-3/4 * self.view.frame.width, 0, 0)
//        }) { (true) in
//            self.imgHinh.layer.transform = CATransform3DMakeTranslation(3/4 * self.view.frame.width, 0, 0)
//            self.imgHinh.image = self.images[row]
//            UIView.animate(withDuration: 1, animations: {
//                self.imgHinh.layer.transform = CATransform3DIdentity
//            })
        
//    }

        self.imgContrantRight.constant = self.view.frame.width
        
        UIView.animate(withDuration: 1, animations: {
            self.view.layoutSubviews()
        }) { (true) in
            self.imgContrantRight.constant = -1/2 * self.view.frame.width
            self.view.layoutSubviews()
            self.imgHinh.image = self.images[row]
            self.imgContrantRight.constant = 1/4 * self.view.frame.width
            UIView.animate(withDuration: 1, animations: {
                self.view.layoutSubviews()
            })
        }

        
        
    }
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let superView:UIView = UIView()
        let imageView:UIImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: myPicker.frame.size.width, height: 360))
        let label:UILabel = UILabel(frame: CGRect(x: 0, y: myPicker.frame.height - 70, width: 200, height: 50))
        imageView.image = images[row]
//        imageView.animationDuration = TimeInterval(exactly: 11)!
//        imageView.animationImages = self.images
//        imageView.startAnimating()
        
        label.text = "Hello"
        superView.addSubview(imageView)
        superView.addSubview(label)
        
        
        return superView
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
}
