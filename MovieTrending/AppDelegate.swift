//
//  AppDelegate.swift
//  MovieTrending
//
//  Created by Alex on 25.03.2023.
//

import UIKit

//@main
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        let naVC = UINavigationController(rootViewController: MainViewController())
        window.rootViewController = naVC
        window.makeKeyAndVisible()
        
        self.window = window
        return true
    }
    
}

