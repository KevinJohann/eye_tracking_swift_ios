//
//  AppDelegate.swift
//  changeableApp
//
//  Created by Kevin Torres on 20-09-20.
//  Copyright © 2020 Kevin Torres. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder {
    var window: UIWindow?
}

extension AppDelegate: UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        setInitialVC()
        return true
    }
}

extension AppDelegate {
    // MARK: - setInitialVC
    private func setInitialVC() {
        let splashVC = SplashRouter.createModule()
        window = UIWindow(frame: UIScreen.main.bounds)
        
        let navController = UINavigationController(rootViewController: splashVC)
        
        navController.setNavigationBarHidden(true, animated: false)
        
        window?.rootViewController = navController
        window?.makeKeyAndVisible()
    }
}
