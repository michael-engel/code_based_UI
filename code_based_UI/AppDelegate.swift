//
//  AppDelegate.swift
//  code_based_UI
//
//  Created by Michael Engel on 20/09/2017.
//  Copyright © 2017 Michael Engel. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        // First delete the default generated storyboard and the text "main" under Deployment Info/Deployment Target
        // Create a new window for the window property that comes standard on the AppDelegate class. The UIWindow is where all view controllers and views appear.
        window = UIWindow(frame: UIScreen.main.bounds)
        
        let nav = UINavigationController(rootViewController: MainViewController())
        nav.navigationBar.isTranslucent = false
        
        // Set the initial View Controller to out instance of ViewController "MainViewController" found in ViewController.swift
        window?.rootViewController = nav
        
        // Make the window visible
        window?.makeKeyAndVisible()
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

