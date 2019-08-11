//
//  AppDelegate.swift
//  1-SpotifyPlayBack
//
//  Created by Jonathan Rasmusson Work Pro on 2019-08-09.
//  Copyright © 2019 Rasmusson Software Consulting. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = .black
        window?.makeKeyAndVisible()
        
//        let navigatorController = UINavigationController(rootViewController: Challenge())
                let navigatorController = UINavigationController(rootViewController: Solution())
        
        window?.rootViewController = navigatorController
        
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        UINavigationBar.appearance().isTranslucent = false
        UINavigationBar.appearance().barTintColor = .offBlack
        
        return true
    }
}
