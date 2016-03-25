//
//  CGRect+Extensions.swift
//  AppWideBackgroundExample
//
//  Created by Marc Zobec on 2016-03-25.
//  Copyright © 2016 Marc Zobec. All rights reserved.
//

import CoreGraphics

extension CGRect {
    
    func moveX(by delta: CGFloat) -> CGRect {
        return CGRect(origin: CGPoint(x: origin.x + delta, y: origin.y), size: size)
    }
    
    func moveY(by delta: CGFloat) -> CGRect {
        return CGRect(origin: CGPoint(x: origin.x, y: origin.y + delta), size: size)
    }
    
    func moveBy(x deltaX: CGFloat, y deltaY: CGFloat) -> CGRect {
        return CGRect(origin: CGPoint(x: origin.x + deltaX, y: origin.y + deltaY), size: size)
    }
    
}