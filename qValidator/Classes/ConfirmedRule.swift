//
//  ConfirmedRule.swift
//  Validator
//
//  Created by Quy Cao Quoc on 4/14/18.
//

public class ConfirmedRule: Rule {
    
    private var validatable: Validatable
    private var message: String
    
    init(to validatable: Validatable, message: String) {
        self.validatable = validatable
        self.message = message
    }
    
    public func validate(value: String) -> Bool {
        return validatable.validationText == value
    }
    
    public var errorMessage: String {
        return message
    }
}

extension Validation {
    
    public func confirmed(to validatable: Validatable,
                             message: String = "Confirmation does not match") -> Validation {
        add(rule: ConfirmedRule(to: validatable, message: message))
        return self
    }
}
