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
    
    init(transitionOperation: UINavigationControllerOperation) {
        transitionFrames = CustomSlideTransitionFrames(transitionOperation: transitionOperation, slideViewSize: UIScreen.mainScreen().bounds.size)
    }
    
    func animateTransition(transitionContext: UIViewControllerContextTransitioning) {
        let fromViewController = transitionContext.viewControllerForKey(UITransitionContextFromViewControllerKey)!
        let toViewController = transitionContext.viewControllerForKey(UITransitionContextToViewControllerKey)!
        guard let containerView = transitionContext.containerView() else { return }
        
        containerView.addSubview(fromViewController.view)
        containerView.addSubview(toViewController.view)
        
        let toView = toViewController.view
        toView.frame = transitionFrames.toView.end
        toView.setNeedsLayout()
        toView.layoutIfNeeded()
        
        toViewController.view.frame = transitionFrames.toView.start
        
        UIView.animateWithDuration(transitionDuration(transitionContext), delay: 0.0, options: .CurveLinear, animations: { () -> Void in
            toViewController.view.frame = self.transitionFrames.toView.end
            fromViewController.view.frame = self.transitionFrames.fromView.end
        }) { (_) -> Void in
            transitionContext.completeTransition(!transitionContext.transitionWasCancelled())
        }
    }
    
    func transitionDuration(transitionContext: UIViewControllerContextTransitioning?) -> NSTimeInterval {
        return 0.3
    }
    
}

typealias TransitionFrame = (start: CGRect, end: CGRect)
struct CustomSlideTransitionFrames {
    
    var fromView: TransitionFrame
    var toView: TransitionFrame
    
    init(transitionOperation: UINavigationControllerOperation, slideViewSize: CGSize) {
        let direction: CGFloat = (transitionOperation == .Push) ? 1.0 : (transitionOperation == .Pop) ? -1.0 : 0.0
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
