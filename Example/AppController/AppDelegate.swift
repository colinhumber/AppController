//
//  AppDelegate.swift
//  AppController
//
//  Created by Christian Gossain on 11/17/2015.
//  Copyright (c) 2015 Christian Gossain. All rights reserved.
//

import UIKit
import AppController

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    lazy var appController: AppController = {
        return AppController(storyboardName: "Main", loggedOutInterfaceID: "loggedOutInterface", loggedInInterfaceID: "loggedInInterface")
    }()
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // install the app controller's root view controller as the root view controller of the window
        window?.rootViewController = appController.rootViewController
        window?.makeKeyAndVisible()
        
        // note that the AppController initially loads the `logged out` interface
        // simulating an event that triggers switching to the `logged in` interface (i.e. auth observer firing, button tapped, etc.)
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            // this will notify any active AppController instance to transition to the `logged in` interface
            AppController.login()
            
            // now simulate the log out
            // simulating an event that triggers switching to the `logged out` interface (i.e. auth observer firing, button tapped, etc.)
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                // this will notify any active AppController instance to transition to the `logged out` interface
                AppController.logout()
            }
        }
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}
