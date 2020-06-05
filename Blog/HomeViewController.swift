//
//  ViewController.swift
//  TASK05
//
//  Created by Keyur on 3/5/20.
//  Copyright © 2020 Keyur. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet var btnLogOut: UIButton!
    @IBOutlet var lblTitle: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.title = "Home Screen"
        self.navigationController?.isNavigationBarHidden = false
        
        if let userName = getUserDefaultsForKey(key: AppUserDefaultKeys.userNameKey) as? String {
            lblTitle.text = "Welcome - " + userName
        } else {
            lblTitle.text = "User Not found"
        }
    }

    @IBAction func btnLogOutClick(_ sender: Any) {
        view.endEditing(true)
        print("btnLogOutClick")
        removeUserDefaultsFor(key: AppUserDefaultKeys.currentUserKey)
        removeUserDefaultsFor(key: AppUserDefaultKeys.userNameKey)
        appDelegate.setLoginAsRoot()
    }

}

