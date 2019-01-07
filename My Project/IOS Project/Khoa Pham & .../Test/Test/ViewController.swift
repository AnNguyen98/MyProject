//
//  ViewController.swift
//  SlideMenuCode
//
//  Created by An Nguyễn on 1/13/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate ,UITableViewDataSource {
    
    let buttonMenu:UIButton = UIButton()
    var viewMenu:UIView = UIView()
    var tableView:UITableView = UITableView()
    var tableViewCell:UITableViewCell = UITableViewCell()
    var array:Array<String> = ["IOS" , "PHP" , "Android"]
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupButton()
        setupViewMenu()
        setupTableView()
        
    }
    func setupButton(){
        buttonMenu.setBackgroundImage(#imageLiteral(resourceName: "menu"), for: .normal)
        buttonMenu.layer.frame = CGRect(x: 10, y: 10, width: 30, height: 40)
        buttonMenu.addTarget(self, action: #selector(showSildeMenu), for: .touchUpInside)
        navigationController?.navigationBar.addSubview(buttonMenu)
    }
    @objc func showSildeMenu(){
        UIView.animate(withDuration: 1) {
            if self.viewMenu.frame.origin.x >= 0{
                self.viewMenu.frame.origin.x = -self.view.frame.width/2
            }else{
                self.viewMenu.frame.origin.x = 0
            }
            
        }
    }
    
    func setupViewMenu(){
        viewMenu = UIView(frame: CGRect(x: -view.frame.width/2, y: 20+(navigationController?.navigationBar.frame.height)!, width: view.frame.width/2, height: view.frame.height - 20+(navigationController?.navigationBar.frame.height)!))
        viewMenu.backgroundColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
        navigationController?.view.addSubview(viewMenu)
        
    }
    func setupTableView(){
        tableView = UITableView(frame: CGRect(x: 0, y: (navigationController?.navigationBar.frame.height)! + 20, width: viewMenu.frame.width, height: viewMenu.frame.height))
        viewMenu.addSubview(tableView)
        tableView.register(<#T##cellClass: AnyClass?##AnyClass?#>, forCellReuseIdentifier: "cell")
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 30
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! tableViewCell
        cell.label.text = array[indexPath.row]
        return cell
    }
    
}


