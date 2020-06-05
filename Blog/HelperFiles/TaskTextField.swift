//
//  ViewController.swift
//  TASK05
//
//  Created by Keyur on 3/5/20.
//  Copyright © 2020 Keyur. All rights reserved.
//

import Foundation
import UIKit


class TaskTextField: UITextField {
    
    // MARK: - INIT METHOD -

    override func awakeFromNib() {
        super.awakeFromNib()
        addDoneButtonOnKeyboard()
    }

    func addDoneButtonOnKeyboard() {
        let doneToolbar: UIToolbar = UIToolbar(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 50))
        doneToolbar.barStyle = .default

        let flexSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let done: UIBarButtonItem = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(doneButtonAction))

        let items = [flexSpace, done]
        doneToolbar.items = items
        doneToolbar.sizeToFit()

        inputAccessoryView = doneToolbar
    }

    @objc func doneButtonAction() {
        resignFirstResponder()
    }
}
