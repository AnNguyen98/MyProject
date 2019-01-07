//
//  ViewController.swift
//  WebserviceAgain
//
//  Created by An Nguyễn on 4/9/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mytableView: UITableView!
    var index:IndexPath = IndexPath()
    var arrTinh:Array<String> = Array<String>()
    var arrImage:Array<String> = Array<String>()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       /*
        //https://scabbiest-deed.000webhostapp.com/db
        let url = URL(string: "https://scabbiest-deed.000webhostapp.com/db")
        do{
            let data = try Data(contentsOf: url!)
            let str = String(data: data, encoding: String.Encoding.utf8)
            let charactorSet:CharacterSet = CharacterSet(charactersIn: ".")
            arrTinh = (str?.components(separatedBy: charactorSet))!
            print(arrTinh)
        }catch{
            print("Error!!!")
        }
 */
        
        //https://scabbiest-deed.000webhostapp.com/db.json
        
        let url:URL = URL(string: "https://scabbiest-deed.000webhostapp.com/db.json")!
        do{
            let data:Data = try Data(contentsOf: url)
            let str = String(data: data, encoding: String.Encoding.utf8)
            print("str = " + str!)
            let object:Array<Dictionary<String,AnyObject>> = try JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions.allowFragments) as! Array<Dictionary<String,AnyObject>>
            
            for i in object {
                arrImage.append(i["image"] as! String)
                arrTinh.append(i["name"] as! String)
            }
            print("image  = \(arrImage)")
            print("tinh = \(arrTinh)" )
            
        }catch{
            print("Error!!")
        }
        
        
        mytableView.dataSource = self
        mytableView.delegate = self
        
    }
    @objc func tap(){
        
       let cell = mytableView.cellForRow(at: index)
        cell?.imageView?.layer.transform = CATransform3DScale(CATransform3DIdentity, 2, 2, 2)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 
}

extension ViewController:UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrTinh.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell1
        cell.textLabel?.text = arrTinh[indexPath.row]
        let queue = DispatchQueue(label: "queue")
        let urlImage = URL(string: arrImage[indexPath.row])
            queue.async {
                do{
                    let data = try Data(contentsOf: urlImage!)
                    DispatchQueue.main.async {
                        cell.imageView?.image = UIImage(data: data)
                    }
                }catch{}
            }
        
        let gesture:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(tap))
        cell.imageView?.addGestureRecognizer(gesture)
        cell.imageView?.isUserInteractionEnabled = true
    
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        index = indexPath
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
}
