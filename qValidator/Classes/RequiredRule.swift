//
//  RequireRule.swift
//  Validator
//
//  Created by Quy Cao Quoc on 4/14/18.
//

public class RequiredRule: Rule {
    
    private var message: String
    
    init(message: String) {
        self.message = message
    }
    
    public func validate(value: String) -> Bool {
        return !value.isEmpty
    }
    
    public var errorMessage: String {
        return message
    }
}

extension Validation {
    
    public func required(message: String = "This field is required") -> Validation {
        add(rule: RequiredRule(message: message))
        return self
    }
}
