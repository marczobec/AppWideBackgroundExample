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
        backgroundColor = .redColor()
        
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Background View"
        label.textColor = .whiteColor()
        label.font = UIFont.systemFontOfSize(32.0, weight: UIFontWeightBold)
        label.transform = CGAffineTransformMakeRotation(45);
        label.alpha = 0.5
        addSubview(label)
        
        label.centerXAnchor.constraintEqualToAnchor(centerXAnchor).active = true
        label.centerYAnchor.constraintEqualToAnchor(centerYAnchor).active = true
    }
    
    required init?(coder aDecoder: NSCoder) { return nil }
    
}
