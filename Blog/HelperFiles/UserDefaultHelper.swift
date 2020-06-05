//
//  ViewController.swift
//  TASK05
//
//  Created by Keyur on 3/5/20.
//  Copyright © 2020 Keyur. All rights reserved.
//

import Foundation
import UIKit


struct AppUserDefaultKeys {
    static let currentUserKey = "CurrentUser"
    static let userNameKey = "UserName"
}

func setUserLoginBoolValue(boolValue : Bool) {
    UserDefaults.standard.set(boolValue, forKey: AppUserDefaultKeys.currentUserKey) //Bool
    
}
func setUserNameStringValue(name : String) {
    UserDefaults.standard.set(name, forKey: AppUserDefaultKeys.userNameKey) //setObject
}
/*
let dict = ["Name": "Your", "Country": "YourCountry"]
UserDefaults.standard.set(dict, forKey: "SavedDict")
*/
func removeUserDefaultsFor(key:String) {
    //Remove single key value
    UserDefaults.standard.removeObject(forKey: key)
    UserDefaults.standard.synchronize()
}
func removeAllUserDefaultKey() {
    //Remove all key from device which use by our app
     if let appDomain = Bundle.main.bundleIdentifier {
        UserDefaults.standard.removePersistentDomain(forName: appDomain)
     }
}

func isUserLoggedIn()-> Bool {
    if (getUserDefaultsForKey(key: AppUserDefaultKeys.currentUserKey) != nil) {
       return true
    } else {
      return  false
    }
}


func getUserDefaultsForKey(key:String) -> AnyObject? {
    return UserDefaults.standard.object(forKey: key) as AnyObject?
}


//-----------------------------  NOTES -----------------------------

/*
 
 URL: https://www.iosapptemplates.com/blog/ios-development/data-persistence-ios-swift#:~:text=By%20default%2C%20all%20the%20variables,following%20technologies%20(Swift%20APIs)%3A
 
 iOS Data Persistence in Swift
 
 
 By default, all the variables and constants that you allocate in Swift are stored in memory, so they get lost when users quit the app. Different types of data can be saved to the device locally, using different tools (Swift APIs). To achieve that in Swift that we can use the following technologies (Swift APIs):
 
 
 1.UserDefaults
 2.Keychain
 3.Saving files to disk
 4.Core Data
 5.SQLite
 6.Property Lists
 
 
 
 1. UserDefaults : -
 
 Advantages
 UserDefaults is easy to use, with a simple API
 Thread safe (you can read and write values from any thread), without worrying about synchronization
 UserDefaults is shared between the app and the app extensions
 
 
 Limitations
 It is possible to easily override the value for this same key (key collisions)
 UserDefaults is not encrypted
 Unit testing user defaults can occur with some false positives.
 UserDefaults can be altered globally, from anywhere in the app, so you can run in inconsistent states easily
 
 */
