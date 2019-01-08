//
//  AppDelegate.swift
//  AppWideBackgroundExample
//
//  Created by Marc Zobec on 2016-03-25.
//  Copyright © 2016 Marc Zobec. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow? = UIWindow(frame: UIScreen.main.bounds)
    let navigationControllerDelegate = NavigationControllerDelegate()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        addBackgroundView()
        
        let navigationController = UINavigationController(rootViewController: FirstViewController())
        navigationController.isNavigationBarHidden = true
        navigationController.delegate = navigationControllerDelegate
        
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        return true
    }
    
    func addBackgroundView() {
        guard let window = window else { return }
        
        let backgroundView = BackgroundView()
        backgroundView.translatesAutoresizingMaskIntoConstraints = false
        window.addSubview(backgroundView)
        
        NSLayoutConstraint.activate([
            backgroundView.centerXAnchor.constraint(equalTo: window.centerXAnchor),
            backgroundView.centerYAnchor.constraint(equalTo: window.centerYAnchor),
            backgroundView.widthAnchor.constraint(equalTo: window.widthAnchor),
            backgroundView.heightAnchor.constraint(equalTo: window.heightAnchor),
            ])
    }

}

class NavigationControllerDelegate: NSObject, UINavigationControllerDelegate {
    
    func navigationController(_ navigationController: UINavigationController, animationControllerFor operation: UINavigationController.Operation, from fromVC: UIViewController, to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return CustomSlideTransition(transitionOperation: operation)
    }
    
}
