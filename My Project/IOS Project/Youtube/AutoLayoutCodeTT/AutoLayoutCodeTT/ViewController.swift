//
//  ViewController.swift
//  AutoLayoutCodeTT
//
//  Created by An Nguyễn on 2/7/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let button:UIButton = {
        let bt:UIButton = UIButton()
        bt.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        bt.setTitle("Next!", for: .highlighted)
        bt.setTitleColor(#colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1), for: .highlighted)
        bt.translatesAutoresizingMaskIntoConstraints = false
        bt.addTarget(self, action: #selector(nextManHinh), for: .touchUpInside)
        bt.layer.cornerRadius = 10
        bt.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        bt.layer.borderWidth = 2
        return bt
    }()

    
    @objc func nextManHinh(){
//        let mh2 = MH2ViewController()
//        present(mh2, animated: true, completion: nil)
        
        self.navigationController?.pushViewController(MH2ViewController(), animated: true)
        
    }
    
    
    func setButton(){
        view.addSubview(button)
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.widthAnchor.constraint(equalToConstant: 200).isActive = true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        setButton()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

