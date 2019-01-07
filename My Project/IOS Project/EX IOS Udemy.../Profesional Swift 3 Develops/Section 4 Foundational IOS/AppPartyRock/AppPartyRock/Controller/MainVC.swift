//
//  ViewController.swift
//  AppPartyRock
//
//  Created by An Nguyễn on 4/9/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    var partyRocks:Array<PartyRock> = Array<PartyRock>()
    @IBOutlet weak var tableViewMe: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

