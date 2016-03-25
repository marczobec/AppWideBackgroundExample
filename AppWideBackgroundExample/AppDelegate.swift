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

    var window: UIWindow? = UIWindow(frame: UIScreen.mainScreen().bounds)

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        addBackgroundView()
        let navigationController = UINavigationController(rootViewController: FirstViewController())
        navigationController.navigationBarHidden = true
        
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        return true
    }
    
    func addBackgroundView() {
        let backgroundView = BackgroundView()
        backgroundView.translatesAutoresizingMaskIntoConstraints = false
        window?.addSubview(backgroundView)
        
        backgroundView.centerXAnchor.constraintEqualToAnchor(window?.centerXAnchor).active = true
        backgroundView.centerYAnchor.constraintEqualToAnchor(window?.centerYAnchor).active = true
        backgroundView.widthAnchor.constraintEqualToAnchor(window?.widthAnchor).active = true
        backgroundView.heightAnchor.constraintEqualToAnchor(window?.heightAnchor).active = true
    }

}

