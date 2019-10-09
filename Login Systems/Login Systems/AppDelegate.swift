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
  
   func reset() {
         let rootviewcontroller: UIWindow = ((UIApplication.shared.delegate?.window)!)!
               let stry = UIStoryboard(name: "Main", bundle: nil)
               rootviewcontroller.rootViewController = stry.instantiateViewController(withIdentifier: "rootviewcontroller")

    }
       
}

extension String{
    var localized :String {
        return NSLocalizedString(self, comment: "")
    }
}
