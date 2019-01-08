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
        view.backgroundColor = .clear
        
        let titleLabel = UILabel()
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = "FirstViewController"
        titleLabel.textColor = .white
        titleLabel.font = UIFont.systemFont(ofSize: 24.0)
        view.addSubview(titleLabel)
        
        let showSecondVCButton = UIButton(type: .system)
        showSecondVCButton.translatesAutoresizingMaskIntoConstraints = false
        showSecondVCButton.backgroundColor = .lightGray
        showSecondVCButton.setTitle("Show SecondViewController", for: .normal)
        showSecondVCButton.setTitleColor(.white, for: .normal)
        showSecondVCButton.addTarget(self, action: #selector(didTapShowSecondViewControllerButton), for: .primaryActionTriggered)
        view.addSubview(showSecondVCButton)
        
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16.0),
            
            showSecondVCButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            showSecondVCButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            ])
    }
    
    @objc func didTapShowSecondViewControllerButton() {
        let nextController = SecondViewController()
        
        self.navigationController?.pushViewController(nextController, animated: true)
    }
    
    init() { super.init(nibName: nil, bundle: nil) }
    required init?(coder aDecoder: NSCoder) { return nil }
    
}
