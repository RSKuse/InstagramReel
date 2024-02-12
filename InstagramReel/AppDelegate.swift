//
//  AppDelegate.swift
//  InstagramReel
//
//  Created by Reuben Simphiwe Kuse on 2024/02/11.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        //window?.rootViewController = ViewController()
        //window?.rootViewController = UINavigationController(rootViewController: ViewController())
        window?.rootViewController = TabBarController()

        return true
    }

}
