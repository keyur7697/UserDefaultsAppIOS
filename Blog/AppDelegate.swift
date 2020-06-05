//
//  ViewController.swift
//  TASK05
//
//  Created by Keyur on 3/5/20.
//  Copyright © 2020 Keyur. All rights reserved.
//

// object of app delegate
let appDelegate: AppDelegate = (UIApplication.shared.delegate as? AppDelegate)!

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    //main method that gets executed when the app started
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        if isUserLoggedIn() {
            seHomeScreenAsRoot()
        } else {
            setLoginAsRoot()
        }
        return true
    }
    //function to set login screen as main screen
    func setLoginAsRoot() {
        if let loginVC: LoginViewController = UIStoryboard(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "LoginViewController") as? LoginViewController {
            let navigationController = UINavigationController(rootViewController: loginVC)
            window?.rootViewController = navigationController
            window?.makeKeyAndVisible()
        }
    }

    //function to set home screen as main screen
    func seHomeScreenAsRoot() {
        if let homeScreen: HomeViewController = UIStoryboard(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "HomeViewController") as? HomeViewController {
            let navigationController = UINavigationController(rootViewController: homeScreen)
            window?.rootViewController = navigationController
            window?.makeKeyAndVisible()
        }
    }
}
