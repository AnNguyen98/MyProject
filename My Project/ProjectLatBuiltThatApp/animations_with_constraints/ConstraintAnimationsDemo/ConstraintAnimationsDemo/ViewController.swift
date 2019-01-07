//
//  ViewController.swift
//  ConstraintAnimationsDemo
//
//  Created by Brian Voong on 11/17/17.
//  Copyright © 2017 Lets Build That App. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    lazy var button: UIImageView = {
        let button = UIImageView(image: #imageLiteral(resourceName: "steve-jobs"))
        button.backgroundColor = .red
        button.isUserInteractionEnabled = true
        button.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleAnimated)))
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    @objc func handleAnimated() {
        print("Animating")
        
        let count = animationCount % 4
        
        if count == 0 {
            topConstraint?.isActive = true
            leftConstraint?.isActive = false
            bottomConstraint?.isActive = false
            rightConstraint?.isActive = true
            widthConstraint?.constant = 150
        } else if count == 1 {
            topConstraint?.isActive = false
            leftConstraint?.isActive = false
            bottomConstraint?.isActive = true
            rightConstraint?.isActive = true
            heightConstraint?.constant = 200
        } else if count == 2 {
            rightConstraint?.isActive = false
            topConstraint?.isActive = false
            leftConstraint?.isActive = true
            bottomConstraint?.isActive = true
            widthConstraint?.constant = 100
        } else {
            bottomConstraint?.isActive = false
            rightConstraint?.isActive = false
            topConstraint?.isActive = true
            leftConstraint?.isActive = true
            heightConstraint?.constant = 100
        }
        
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            self.view.layoutIfNeeded()
        }, completion: nil)
        
        animationCount += 1
    }
    
    var leftConstraint: NSLayoutConstraint?
    var topConstraint: NSLayoutConstraint?
    var rightConstraint: NSLayoutConstraint?
    var bottomConstraint: NSLayoutConstraint?
    
    var widthConstraint: NSLayoutConstraint?
    var heightConstraint: NSLayoutConstraint?
    
    var animationCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(button)
        
        leftConstraint = button.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor)
        leftConstraint?.isActive = true
        topConstraint = button.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor)
        topConstraint?.isActive = true
        
        rightConstraint = button.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor)
        bottomConstraint = button.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        
        widthConstraint = button.widthAnchor.constraint(equalToConstant: 100)
        widthConstraint?.isActive = true
            
        heightConstraint = button.heightAnchor.constraint(equalToConstant: 100)
        heightConstraint?.isActive = true
        
    }

}

