//
//  UITextField+Validatable.swift
//  Validator
//
//  Created by Quy Cao on 4/16/18.
//

import UIKit

extension UITextField: Validatable {
    
    public var validationText: String {
        return text ?? ""
    }
}
