//
//  ViewController.swift
//  Autofill OTP
//
//  Created by Pawan kumar on 23/07/19.
//  Copyright © 2019 Pawan Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
   
    @IBOutlet weak var otptextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        otptextField.delegate = self
        
        if #available(iOS 12.0, *) {
            otptextField.textContentType = .oneTimeCode
        } else {
            // Fallback on earlier versions
        }
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        otptextField.resignFirstResponder()
        return true
    }
}

