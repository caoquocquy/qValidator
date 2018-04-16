//
//  PasswordRule.swift
//  Validator
//
//  Created by Quy Cao Quoc on 4/14/18.
//

public class PasswordRule: RegexRule {
    
    // 8 characters. One uppercase. One Lowercase. One number.
    // static let regex = "^(?=.*?[A-Z])(?=.*?[0-9])(?=.*?[a-z]).{8,}$"
    
    // no length. One uppercase. One lowercae. One number.
    // static let regex = "^(?=.*?[A-Z])(?=.*?[0-9])(?=.*?[a-z]).*?$"
    
    // 8 characters with 1 uppercase
    static let regex = "^(?=.*?[A-Z]).{8,}$"
    
    public convenience init(message: String = "Password must be 8 characters with 1 uppercase") {
        self.init(regex: PasswordRule.regex, message: message)
    }
}

extension Validation {
    
    public func password() -> Validation {
        add(rule: PasswordRule())
        return self
    }
}
