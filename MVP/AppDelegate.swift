//
//  AppDelegate.swift
//  MVP
//
//  Created by Peter Yorke on 3/1/17.
//  Copyright © 2017 Storke Brothers LLC. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = UINavigationController(rootViewController: LoginRouter.sharedInstance.viewController)
        window?.makeKeyAndVisible()
        return true
    }

}
