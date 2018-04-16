//
//  ViewController.swift
//  qValidator
//
//  Created by quytinypulse on 04/16/2018.
//  Copyright (c) 2018 quytinypulse. All rights reserved.
//

import UIKit
import qValidator

class ViewController: UIViewController {

    @IBOutlet weak var fullNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    
    let validator = Validator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        validator.add(validation: Validation(validatable: fullNameTextField)
            .required(message: "Full Name is required"))
        
        validator.add(validation: Validation(validatable: emailTextField)
            .required(message: "Email is required")
            .email())
        
        validator.add(validation: Validation(validatable: passwordTextField)
            .required(message: "Password is required")
            .password())
        
        validator.add(validation: Validation(validatable: confirmPasswordTextField)
            .required(message: "Confirm Password is required")
            .confirmed(to: passwordTextField, message: "Comfirm Password does not match"))
    }
    
    @IBAction func submitAction(_ sender: Any) {
        let errorMessages = validator.validate()
        
        var controller: UIAlertController!
        if errorMessages.isEmpty {
            controller = UIAlertController(title: "Validation Succeeded",
                                           message: nil, preferredStyle: .alert)
        } else {
            controller = UIAlertController(title: "Validation Failed",
                                           message: errorMessages.joined(separator: ", "), preferredStyle: .alert)
        }
        controller.addAction(UIAlertAction(title: "Close", style: .cancel, handler: nil))
        present(controller, animated: true, completion: nil)
    }
}

