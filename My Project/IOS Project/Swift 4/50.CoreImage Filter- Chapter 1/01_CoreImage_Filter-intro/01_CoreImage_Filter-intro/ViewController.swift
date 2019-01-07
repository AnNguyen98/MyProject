//
//  ViewController.swift
//  01_CoreImage_Filter-intro
//
//  Created by Zebra on 2017-07-11.
//  Copyright © 2017 Mammoth Interactive. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImageViewOutlet: UIImageView!
    
    let context = CIContext()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let image = CIImage(image: myImageViewOutlet.image!)
        let greenColor = CIColor(color: UIColor.green)
        let intensity = 3.00
        let monochromeFilter = CIFilter(name: "CIColorMonochrome")!
        
        monochromeFilter.setValue(image, forKey: kCIInputImageKey)
        monochromeFilter.setValue(greenColor, forKey: kCIInputColorKey)
        monochromeFilter.setValue(intensity, forKey: kCIInputIntensityKey)
        let monochromeResult = monochromeFilter.outputImage!
        
        let fadeFilter = CIFilter(name: "CIPhotoEffectFade")!
        fadeFilter.setValue(monochromeResult, forKey: kCIInputImageKey)
        let fadedMonochromeResult = fadeFilter.outputImage!
        
        let filteredImage = context.createCGImage(fadedMonochromeResult, from: monochromeResult.extent)
        myImageViewOutlet.image = UIImage(cgImage: filteredImage!)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

