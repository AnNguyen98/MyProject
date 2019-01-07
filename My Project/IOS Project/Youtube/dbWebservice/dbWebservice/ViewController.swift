//
//  ViewController.swift
//  dbWebservice
//
//  Created by An Nguyễn on 4/5/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    let strData:String = "hanoi.haiphong.hagiang.baccan.hatinh.laocai.daccnong.saigon"
    var array:Array<Dictionary<String,AnyObject>> = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       // https://scabbiest-deed.000webhostapp.com/db
//        let url:URL = URL(string: "https://scabbiest-deed.000webhostapp.com/db")!
//        do{
//            let data:Data = try Data(contentsOf: url)
//            self.view.backgroundColor = UIColor.blue
//            print("Success!!!")
//            let str = String(data: data, encoding: String.Encoding.utf8)
//            print(str!)
//            let ch = CharacterSet(charactersIn: ".")
//            array = (str?.components(separatedBy: ch))!
//            print(array)
//        }catch{
//            print("Error load Data!!!!")
//        }
        
        //https://scabbiest-deed.000webhostapp.com/db.json
        let url:URL = URL(string: "https://scabbiest-deed.000webhostapp.com/db.json")!
        do{
            let data:Data = try Data(contentsOf: url)
            self.view.backgroundColor = UIColor.blue
            print("Success!!!")
            let object:Array<AnyObject> = try JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions.allowFragments) as! Array<AnyObject>
            for i in object{
                let tinh:Dictionary<String,AnyObject> = i as! Dictionary<String,AnyObject>
                array.append(tinh)
            }
            print(object)
        }catch{
            print("Error load Data!!!!")
        }
        print(array)
        tableView.delegate = self
        tableView.dataSource = self
        
    }
        

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
extension ViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCellMe
        let tinh = array[indexPath.row]
        cell.lblText.text = tinh["name"] as? String
        cell.imageHih.loadImage(urlString: (tinh["image"] as? String)!)
        //http://i.9mobi.vn/cf/images/2015/03/nkk/hinh-dep-11.jpg
        //let string =  "http://i.9mobi.vn/cf/images/2015/03/nkk/hinh-dep-11.jpg"
        //cell.imageHih.loadImage(urlString:  string)
        //print(tinh["image"])
        
        let tappges:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(tap))
        cell.imageHih.addGestureRecognizer(tappges)
        cell.imageHih.isUserInteractionEnabled = true
        return cell
    }
    @objc func tap(){
        print("aaa")
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        <#code#>
    }
}
extension UIImageView{
    func loadImage(urlString:String){
        let url1:URL = URL(string: urlString)!
        let queue = DispatchQueue(label: "queue")
        queue.async {
            do{
                let data = try Data(contentsOf: url1)
                DispatchQueue.main.async {
                    self.image = UIImage(data: data)
                }
                
            }catch{
                print("eeeee")
            }
        }
        
    }
}

