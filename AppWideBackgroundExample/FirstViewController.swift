//
//  FirstViewController.swift
//  AppWideBackgroundExample
//
//  Created by Marc Zobec on 2016-03-25.
//  Copyright © 2016 Marc Zobec. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    override func viewDidLoad() {
        view.backgroundColor = .clearColor()
        
        let titleLabel = UILabel()
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = "FirstViewController"
        titleLabel.textColor = .whiteColor()
        titleLabel.font = UIFont.systemFontOfSize(24.0)
        view.addSubview(titleLabel)
        
        let showSecondVCButton = UIButton(type: .System)
        showSecondVCButton.translatesAutoresizingMaskIntoConstraints = false
        showSecondVCButton.backgroundColor = .lightGrayColor()
        showSecondVCButton.setTitle("Show SecondViewController", forState: .Normal)
        showSecondVCButton.setTitleColor(.whiteColor(), forState: .Normal)
        showSecondVCButton.addTarget(self, action: #selector(didTapShowSecondButton(_:)), forControlEvents: .TouchUpInside)
        view.addSubview(showSecondVCButton)
        
        titleLabel.centerXAnchor.constraintEqualToAnchor(view.centerXAnchor).active = true
        titleLabel.topAnchor.constraintEqualToAnchor(view.topAnchor, constant: 16.0).active = true
        
        showSecondVCButton.centerXAnchor.constraintEqualToAnchor(view.centerXAnchor).active = true
        showSecondVCButton.centerYAnchor.constraintEqualToAnchor(view.centerYAnchor).active = true
    }
    
    func didTapShowSecondButton(button: UIButton) {
        self.navigationController?.pushViewController(SecondViewController(), animated: true)
    }
    
    init() { super.init(nibName: nil, bundle: nil) }
    required init?(coder aDecoder: NSCoder) { return nil }
    
}
