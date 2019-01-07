//
//  ViewController.swift
//  SlideMenuCode
//
//  Created by An Nguyễn on 1/13/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let buttonMenu:UIButton = UIButton()
    var viewMenu:UIView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupButton()
        setupViewMenu()
    }
    func setupButton(){
        buttonMenu.setBackgroundImage(#imageLiteral(resourceName: "menu"), for: .normal)
        buttonMenu.layer.frame = CGRect(x: 10, y: 10, width: 30, height: 40)
        buttonMenu.addTarget(self, action: #selector(showSildeMenu), for: .touchUpInside)
        navigationController?.navigationBar.addSubview(buttonMenu)
    }
    @objc func showSildeMenu(){
        print("Show!!")
        if self.viewMenu.frame.origin.x >= 0{
            self.viewMenu.frame.origin.x = -self.view.frame.width/2
        }
        UIView.animate(withDuration: 1) {
            self.viewMenu.frame.origin.x += self.view.frame.width/2
            
        }
    }
    
    func setupViewMenu(){
        viewMenu = UIView(frame: CGRect(x: -view.frame.width/2, y:(20 + (navigationController?.view.frame.height)!), width: view.frame.width/2, height: (view.frame.height-20-(navigationController?.view.frame.height)!)))
        viewMenu.backgroundColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
        navigationController?.view.addSubview(viewMenu)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

