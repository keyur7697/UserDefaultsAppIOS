//
//  ViewController.swift
//  TASK05
//
//  Created by Keyur on 3/5/20.
//  Copyright © 2020 Keyur. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    
    @IBOutlet var txtUserName: TaskTextField!
    @IBOutlet var txtPasswordName: TaskTextField!
    @IBOutlet var btnLogin: UIButton!
    @IBOutlet var lblTitle: UILabel!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.navigationController?.isNavigationBarHidden = true
    }

    @IBAction func btnLoginClick(_ sender: Any) {
        view.endEditing(true)
        print("btnLoginClick")
        if txtUserName.text!.isEmpty {
            print("txtUserName isEmpty")
        } else if txtPasswordName.text!.isEmpty {
            print("txtPasswordName isEmpty")
        } else {
            setUserLoginBoolValue(boolValue: true)
            setUserNameStringValue(name: txtUserName.text!)
            appDelegate.seHomeScreenAsRoot()
        }
    }
}

