//
//  ViewController.swift
//  AutoLayoutDoiTuong_TaoNHieuMainStoryboard
//
//  Created by An Nguyễn on 1/13/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func btnMH2(_ sender: Any) {
        let vc = UIStoryboard(name: "StoryboardTeam2", bundle: nil).instantiateViewController(withIdentifier: "mh2")
       // present(vc, animated: true, completion: nil)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

