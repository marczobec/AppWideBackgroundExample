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
        view.backgroundColor = .clear
        
        let titleLabel = UILabel()
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = "SecondViewController"
        titleLabel.textColor = .white
        titleLabel.font = UIFont.systemFont(ofSize: 24.0)
        view.addSubview(titleLabel)
        
        let backButton = UIButton(type: .system)
        backButton.translatesAutoresizingMaskIntoConstraints = false
        backButton.backgroundColor = .lightGray
        backButton.setTitle("Back to FirstViewController", for: .normal)
        backButton.setTitleColor(.white, for: .normal)
        backButton.addTarget(self, action: #selector(didTapBackButton), for: .primaryActionTriggered)
        view.addSubview(backButton)
        
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16.0),
            
            backButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            backButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            ])
    }
    
    @objc func didTapBackButton() {
        self.navigationController?.popViewController(animated: true)
    }
    
    init() { super.init(nibName: nil, bundle: nil) }
    required init?(coder aDecoder: NSCoder) { return nil }
    
}

