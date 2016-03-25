//
//  SecondViewController.swift
//  AppWideBackgroundExample
//
//  Created by Marc Zobec on 2016-03-25.
//  Copyright © 2016 Marc Zobec. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        view.backgroundColor = .clearColor()
        
        let titleLabel = UILabel()
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = "SecondViewController"
        titleLabel.textColor = .whiteColor()
        titleLabel.font = UIFont.systemFontOfSize(24.0)
        view.addSubview(titleLabel)
        
        let backButton = UIButton(type: .System)
        backButton.translatesAutoresizingMaskIntoConstraints = false
        backButton.backgroundColor = .lightGrayColor()
        backButton.setTitle("Back to FirstViewController", forState: .Normal)
        backButton.setTitleColor(.whiteColor(), forState: .Normal)
        backButton.addTarget(self, action: #selector(didTapBackButton(_:)), forControlEvents: .TouchUpInside)
        view.addSubview(backButton)
        
        titleLabel.centerXAnchor.constraintEqualToAnchor(view.centerXAnchor).active = true
        titleLabel.topAnchor.constraintEqualToAnchor(view.topAnchor, constant: 16.0).active = true
        
        backButton.centerXAnchor.constraintEqualToAnchor(view.centerXAnchor).active = true
        backButton.centerYAnchor.constraintEqualToAnchor(view.centerYAnchor).active = true
    }
    
    func didTapBackButton(button: UIButton) {
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    init() { super.init(nibName: nil, bundle: nil) }
    required init?(coder aDecoder: NSCoder) { return nil }
    
}

