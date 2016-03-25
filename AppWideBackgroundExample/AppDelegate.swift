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
        
        window?.rootViewController = UINavigationController()
        window?.makeKeyAndVisible()
        return true
    }

}

