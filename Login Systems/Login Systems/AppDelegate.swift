//
//  AppDelegate.swift
//  Login Systems
//
//  Created by FO24 on 10/8/19.
//  Copyright © 2019 FO24. All rights reserved.
//

import UIKit
import MOLH

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate ,MOLHResetable {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
         MOLH.shared.activate(true)
        return true
    }
    // MARK: UISceneSession Lifecycle
    

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
   func reset() {
         let rootviewcontroller: UIWindow = ((UIApplication.shared.delegate?.window)!)!
               let stry = UIStoryboard(name: "Main", bundle: nil)
               rootviewcontroller.rootViewController = stry.instantiateViewController(withIdentifier: "rootnav")    }
       
}

extension String{
    var localized :String {
        return NSLocalizedString(self, comment: "")
    }
}
