//
//  ViewController.swift
//  constraint_animations_lbta
//
//  Created by Brian Voong on 11/17/17.
//  Copyright © 2017 Lets Build That App. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var steveJobsImageView: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "steve-jobs"))
        //this enables autolayout
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.isUserInteractionEnabled = true
        imageView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleAnimate)))
        return imageView
    }()
    
    @objc func handleAnimate() {
        print("Trying to animate to the other corner...")
        
        topAnchor?.isActive = false
        leftAnchor?.isActive = false
        bottomAnchor?.isActive = true
        rightAnchor?.isActive = true
        
        rightAnchor?.constant = -16
        
        widthAnchor?.constant = 200
        heightAnchor?.constant = 200
        
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            
            self.view.layoutIfNeeded()
            
//            self.steveJobsImageView.frame = CGRect(x: 200, y: 0, width: 50, height: 50)
            
        }, completion: nil)
    }
    
    var leftAnchor: NSLayoutConstraint?
    var rightAnchor: NSLayoutConstraint?
    var topAnchor: NSLayoutConstraint?
    var bottomAnchor: NSLayoutConstraint?
    
    var widthAnchor: NSLayoutConstraint?
    var heightAnchor: NSLayoutConstraint?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(steveJobsImageView)
            
            topAnchor = steveJobsImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor)
        topAnchor?.isActive = true
        
        leftAnchor = steveJobsImageView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor)
        leftAnchor?.isActive = true
        
        rightAnchor = steveJobsImageView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor)
        bottomAnchor = steveJobsImageView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        
//        steveJobsImageView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        
        widthAnchor = steveJobsImageView.widthAnchor.constraint(equalToConstant: 100)
        widthAnchor?.isActive = true
        
        heightAnchor = steveJobsImageView.heightAnchor.constraint(equalToConstant: 100)
        
        heightAnchor?.isActive = true
        
        
//        steveJobsImageView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
    }

}















