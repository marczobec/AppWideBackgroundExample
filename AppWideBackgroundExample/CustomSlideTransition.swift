//
//  CustomSlideTransition.swift
//  AppWideBackgroundExample
//
//  Created by Marc Zobec on 2016-03-25.
//  Copyright © 2016 Marc Zobec. All rights reserved.
//

import UIKit

class CustomSlideTransition: NSObject, UIViewControllerAnimatedTransitioning {
    
    let transitionFrames: CustomSlideTransitionFrames
    
    init(transitionOperation: UINavigationController.Operation) {
        transitionFrames = CustomSlideTransitionFrames(transitionOperation: transitionOperation, slideViewSize: UIScreen.main.bounds.size)
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        guard
            let fromController = transitionContext.viewController(forKey: .from),
            let toController = transitionContext.viewController(forKey: .to),
            let toView = toController.view
            else { return }
        
        let containerView = transitionContext.containerView
        
        containerView.addSubview(fromController.view)
        containerView.addSubview(toController.view)
        
        toView.frame = transitionFrames.toView.end
        toView.setNeedsLayout()
        toView.layoutIfNeeded()
        
        toController.view.frame = transitionFrames.toView.start
        
        UIView.animate(withDuration: transitionDuration(using: transitionContext), delay: 0.0, options: .curveLinear, animations: {
            toController.view.frame = self.transitionFrames.toView.end
            fromController.view.frame = self.transitionFrames.fromView.end
        }) { (completed) in
            transitionContext.completeTransition(!transitionContext.transitionWasCancelled)
        }
    }
    
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 0.3
    }
    
}

typealias TransitionFrame = (start: CGRect, end: CGRect)
struct CustomSlideTransitionFrames {
    
    var fromView: TransitionFrame
    var toView: TransitionFrame
    
    init(transitionOperation: UINavigationController.Operation, slideViewSize: CGSize) {
        let direction: CGFloat = (transitionOperation == .push) ? 1.0 : (transitionOperation == .pop) ? -1.0 : 0.0
        let frame = CGRect(origin: .zero, size: slideViewSize)
        
        fromView = (
            start: frame,
            end: frame.moveX(by: -direction * slideViewSize.width)
        )
        
        toView = (
            start: frame.moveX(by: direction * slideViewSize.width),
            end: frame
        )
    }
    
}
