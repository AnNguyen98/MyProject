//
//  ViewController.swift
//  AutoLayoutFull2
//
//  Created by An Nguyễn on 1/12/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        setupButton()
    }
    
    func setupButton(){
        let button:UIButton = UIButton()
        button.backgroundColor = UIColor.clear
        button.layer.borderWidth = 2
        button.layer.borderColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        button.layer.cornerRadius = 10
        button.setTitle("Next", for: UIControlState.highlighted)
        button.setTitleColor(#colorLiteral(red: 1, green: 0.0258490509, blue: 0.2641437061, alpha: 1), for: UIControlState.highlighted)
        button.frame = CGRect(x: UIScreen.main.bounds.width/2 - 100, y: UIScreen.main.bounds.height/2 - 25, width: 200, height: 50)
        button.addTarget(self, action: #selector(actionButton), for: UIControlEvents.touchUpInside)
        
        view.addSubview(button)
    }
    @objc func actionButton(){
        let vc = ViewController1()
        self.navigationController?.pushViewController(vc, animated: true)
        //present(vc, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

