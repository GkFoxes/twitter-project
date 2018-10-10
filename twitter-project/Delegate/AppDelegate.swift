//
//  AppDelegate.swift
//  twitter-project
//
//  Created by Дмитрий Матвеенко on 05.07.2018.
//  Copyright © 2018 Дмитрий Матвеенко. All rights reserved.
//

import UIKit
import RealmSwift
import Firebase

var realm : Realm!

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let shared = SharedManager.shared
        
        FirebaseApp.configure()
        
        if Auth.auth().currentUser != nil {
            shared.isLogin = true
        }
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        
        if shared.isLogin != true {
            let mainStoryboard = UIStoryboard.init(name: "Main", bundle: nil)
            let loginViewController = mainStoryboard.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
            let navigationController = UINavigationController.init(rootViewController: loginViewController)
            self.window?.rootViewController = navigationController
            self.window?.makeKeyAndVisible()
        } else {
            let feedStoryboard = UIStoryboard.init(name: "Feed", bundle: nil)
            let sideMenuViewController = feedStoryboard.instantiateViewController(withIdentifier: "SideMenuViewController") as! SideMenuViewController
            self.window?.rootViewController = sideMenuViewController
            self.window?.makeKeyAndVisible()
        }
        
        return true
    }
}
