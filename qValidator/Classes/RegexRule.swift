//
//  RegexRule.swift
//  Validator
//
//  Created by Quy Cao Quoc on 4/14/18.
//

public class RegexRule: Rule {
    
    private var REGEX: String = "^(?=.*?[A-Z]).{8,}$"
    private var message : String
    
    public init(regex: String, message: String = "Invalid Regular Expression") {
        self.REGEX = regex
        self.message = message
    }
    
    public func validate(value: String) -> Bool {
        let test = NSPredicate(format: "SELF MATCHES %@", self.REGEX)
        return test.evaluate(with: value)
    }
    
    public var errorMessage: String {
        return message
    }
}

extension Validation {
    
    public func regex(regex: String,
                      message: String = "Invalid Regular Expression") -> Validation {
        add(rule: RegexRule(regex: regex, message: message))
        return self
    }
}
