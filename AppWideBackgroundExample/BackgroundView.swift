//
//  BackgroundView.swift
//  AppWideBackgroundExample
//
//  Created by Marc Zobec on 2016-03-25.
//  Copyright © 2016 Marc Zobec. All rights reserved.
//

import UIKit

class BackgroundView: UIView {
    
    init() {
        super.init(frame: .zero)
        backgroundColor = .red
        
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Background View"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 32.0, weight: .bold)
        label.transform = CGAffineTransform.init(rotationAngle: 45.0)
        label.alpha = 0.5
        addSubview(label)
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: centerXAnchor),
            label.centerYAnchor.constraint(equalTo: centerYAnchor)
            ])
    }
    
    required init?(coder aDecoder: NSCoder) { return nil }
    
}
