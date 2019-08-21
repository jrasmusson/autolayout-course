//
//  AppDelegate.swift
//  PaddingWithSpacers
//
//  Created by Jonathan Rasmusson (Contractor) on 2019-08-21.
//  Copyright © 2019 Jonathan Rasmusson. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = .white
        window?.makeKeyAndVisible()

        //        let navigatorController = UINavigationController(rootViewController: Challenge())
        let navigatorController = UINavigationController(rootViewController: Solution())
        window?.rootViewController = navigatorController

        return true
    }

}
