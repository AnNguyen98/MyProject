//
//  ViewController.swift
//  01_Intro_to_WebKit
//
//  Created by Zebra on 2017-07-27.
//  Copyright © 2017 Mammoth Interactive. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    //MARK: Outlet vars
    @IBOutlet weak var viewContainer: UIView!
    @IBOutlet weak var backButtonOutlet: UIBarButtonItem!
    @IBOutlet weak var forwardButtonOutlet: UIBarButtonItem!
    
    //MARK: webView and progressBar vars
    var webView: WKWebView!
    var progressBar : UIProgressView!
    let allowedURL = URL(string: "https://www.apple.com/")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setUpUI()
        setUpWebView()
        webView.navigationDelegate = self
        webView.uiDelegate = self
        
        viewContainer.addSubview(webView)
        
        let inputURL = allowedURL
        let urlRequest = URLRequest(url: inputURL!)
        webView.load(urlRequest)
    }
    
    func setUpUI(){
        backButtonOutlet.isEnabled = false
        forwardButtonOutlet.isEnabled = false
        progressBar = UIProgressView(frame: CGRect(x: 0, y: 0, width: viewContainer.frame.width, height: 50))
        progressBar.autoresizingMask = [.flexibleWidth]
        progressBar.progress = 0.0
        progressBar.tintColor = UIColor.green.withAlphaComponent(0.5)
    }
    
    func setUpWebView(){
        webView = WKWebView(frame: CGRect(x: 0, y: 0, width: viewContainer.frame.width, height: viewContainer.frame.height))
        webView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        webView.addObserver(self, forKeyPath: #keyPath(WKWebView.isLoading), options: .new, context: nil)
        webView.addObserver(self, forKeyPath: #keyPath(WKWebView.estimatedProgress), options: .new, context: nil)
        webView.addSubview(progressBar)
        webView.allowsBackForwardNavigationGestures = true
    }
    
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        // Enables/disables back and forward buttons
        if (keyPath == #keyPath(WKWebView.isLoading)) {
            backButtonOutlet.isEnabled = webView.canGoBack
            forwardButtonOutlet.isEnabled = webView.canGoForward
        }
        // Updates progress bar based on loading progress
        if (keyPath == #keyPath(WKWebView.estimatedProgress)) {
            progressBar.progress = Float(webView.estimatedProgress)
            progressBar.isHidden = (webView.estimatedProgress == 1)
        }
    }
    
    @IBAction func backButtonWasTapped(_ sender: Any) {
        if (webView.canGoBack) {
            webView.goBack()
        }
    }
    
    @IBAction func forwardButtonWasTapped(_ sender: Any) {
        if (webView.canGoForward) {
            webView.goForward()
        }
    }
    
    func displayAlert(_ error: Error?) {
        let alert = UIAlertController(title: "Oops", message: (error?.localizedDescription ?? "Nope"), preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    deinit {
        webView.removeObserver(self, forKeyPath: #keyPath(WKWebView.isLoading))
        webView.removeObserver(self, forKeyPath: #keyPath(WKWebView.estimatedProgress))
    }

}

extension ViewController: WKNavigationDelegate, WKUIDelegate {
    
    // Updates navigation bar title with webpage title when navigation finishes
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        navigationItem.title = webView.title
    }
    
    // Displays modal alert if cannot load page on initial load
    func webView(_ webView: WKWebView, didFailProvisionalNavigation navigation: WKNavigation!, withError error: Error) {
        displayAlert(error)
    }
    
    // Displays modal alert if cannot load page
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        displayAlert(error)
    }
    
    // Handles links that open in new tab
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
        if navigationAction.targetFrame == nil {
            webView.load(navigationAction.request)
        }
        return nil
    }
    
    // Restricts navigation to apple.com and subdomains
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        if let reqURL = navigationAction.request.url {
            if let host = reqURL.host {
                if (host.range(of: "apple.com") != nil) {
                    decisionHandler(.allow)
                } else {
                    decisionHandler(.cancel)
                    displayAlert(nil)
                }
            } else {
                decisionHandler(.cancel)
                displayAlert(nil)
            }
        }
    }
    
}
