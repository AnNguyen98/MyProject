//
//  ViewController.swift
//  03_Generator_Filter
//
//  Created by Zebra on 2017-07-13.
//  Copyright © 2017 Mammoth Interactive. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageViewOutlet: UIImageView!
    @IBOutlet weak var textFieldOutlet: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func qrCodeButtonWasTapped(_ sender: Any) {
        imageViewOutlet.image = generateQRCode()
    }
    
    
    @IBAction func barcodeButtonWasTapped(_ sender: Any) {
        imageViewOutlet.image = generateBarcode()
    }
    
    func generateBarcode() -> UIImage? {
        let stringData = textFieldOutlet.text!.data(using: .ascii)
        let barcodeFilter = CIFilter(name: "CICode128BarcodeGenerator")!
        barcodeFilter.setValue(stringData, forKey: "inputMessage")
        if let barcodeImage = barcodeFilter.outputImage {
            let formattedImg = formatImage(img: barcodeImage)
            return UIImage(ciImage: formattedImg)
        }
        return nil
    }
    
    func generateQRCode() -> UIImage? {
        let stringData = textFieldOutlet.text!.data(using: .isoLatin1)
        let qrFilter = CIFilter(name: "CIQRCodeGenerator")!
        qrFilter.setValue(stringData, forKey: "inputMessage")
        if let qrImage = qrFilter.outputImage {
            let formattedImg = formatImage(img: qrImage)
            return UIImage(ciImage: formattedImg)
        }
        return nil
    }
    
    func formatImage(img: CIImage) -> CIImage {
        let scaleX = imageViewOutlet.frame.size.width / img.extent.size.width
        let scaleY = imageViewOutlet.frame.size.height / img.extent.size.height
        return img.applying(CGAffineTransform(scaleX: scaleX, y: scaleY))
    }



}

