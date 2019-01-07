//
//  ViewController.swift
//  PracticeJson
//
//  Created by An Nguyễn on 4/10/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       /* //https://jsonplaceholder.typicode.com/posts
        
        var products:Array<Product> = Array<Product>()
        
        let url:URL = URL(string: "https://jsonplaceholder.typicode.com/posts")!
        do {
            let data = try Data(contentsOf: url)
            let objects:Array<Dictionary<String,AnyObject>>  = try JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions.allowFragments) as! Array<Dictionary<String,AnyObject>>
            
            for object in objects{
                let userId:Int = object["userId"] as! Int
                let title:String = object["title"] as! String
                let id:Int = object["id"] as! Int
                let body:String = object["body"] as! String
                let product:Product = Product(userId, title, id, body)
                products.append(product)
            }
            for i in products{
                print(i._id)
            }
        }catch{}
        */
        /*
        var users:Array<User> = Array<User>()
        //https://jsonplaceholder.typicode.com/comments
        let url:URL = URL(string: "https://jsonplaceholder.typicode.com/comments")!
        do {
            let data = try Data(contentsOf: url)
            let objects:Array<Dictionary<String,AnyObject>>  = try JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions.allowFragments) as! Array<Dictionary<String,AnyObject>>
            
            for object in objects{
                let postId:Int = object["postId"] as! Int
                let id:Int = object["id"] as! Int
                let name:String = object["name"] as! String
                let email:String = object["email"] as! String
                let body:String = object["body"] as! String
                let user:User = User(postId, id, name, email, body)
                users.append(user)
            }
            for i in users{
                print(i._email)
            }
        }catch{}
        */
        
        /*
        //https://jsonplaceholder.typicode.com/photos
        var photos:Array<Photo> = Array<Photo>()
        let url:URL = URL(string: "https://jsonplaceholder.typicode.com/photos")!
        do{
            let data = try Data(contentsOf: url)
            let objects:Array<Dictionary<String,AnyObject>> = try JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions.allowFragments) as! Array<Dictionary<String,AnyObject>>
            for object in objects{
                let albumId:Int = object["albumId"] as! Int
                let id:Int = object["id"] as! Int
                let title:String  = object["title"] as! String
                let url1:String  = object["url"] as! String
                let thumbnail:String = object["thumbnailUrl"] as! String
                let photo = Photo(albumId,id,title,url1,thumbnail)
                photos.append(photo)
            }
            for photo in photos{
                print(photo.url)
            }
            //print(objects)
        }catch{}
        */
        
        //https://jsonplaceholder.typicode.com/users
        var usersData:Array<Users> = Array<Users>()
        let url:URL = URL(string: "https://jsonplaceholder.typicode.com/users")!
        do{
            let data:Data = try Data(contentsOf: url)
            let objects:Array<Dictionary<String,AnyObject>> = try JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions.allowFragments) as! Array<Dictionary<String, AnyObject>>
            for object in objects{
                let user:Users = Users(object["id"] as! Int, object["name"] as! String, object["username"] as! String, object["phone"] as! String, object["website"] as! String, object["email"] as! String, object["company"] as! Dictionary<String,String>, object["address"] as! Dictionary<String,AnyObject>)
                usersData.append(user)
            }
            for user in usersData{
                print(user.adress["street"]!)
            }
        }catch{}
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

