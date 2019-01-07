//
//  ViewController.swift
//  UIWebView
//
//  Created by An Nguyễn on 3/13/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIWebViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let myWebView:UIWebView = UIWebView()
        myWebView.frame = self.view.bounds
        //myWebView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        myWebView.delegate = self
        
        self.view.addSubview(myWebView)

        let url:URL = URL(string: "https://www.google.com.vn/webhp?hl=vi&sa=X&ved=0ahUKEwit9vyRtOnZAhUMu7wKHf6EDcwQPAgD&gws_rd=cr&dcr=0&ei=deOnWriiCYy58QXg-KOYCw")!
        let request:NSURLRequest = NSURLRequest(url: url)
        
        myWebView.loadRequest(request as URLRequest)
        
    }

    func webViewDidStartLoad(_ webView: UIWebView) {
        print("webViewDidStartLoad---")
    }
    func webViewDidFinishLoad(_ webView: UIWebView) {
        print("webViewDidFinishLoad----")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

