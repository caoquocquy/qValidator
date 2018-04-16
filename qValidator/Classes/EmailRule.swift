//
//  EmailRule.swift
//  Validator
//
//  Created by Quy Cao Quoc on 4/14/18.
//

public class EmailRule: RegexRule {
    
    private static let regex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
    
    public convenience init(message: String = "Email is invalid") {
        self.init(regex: EmailRule.regex, message: message)
    }
}

extension Validation {
    
    public func email() -> Validation {
        add(rule: EmailRule())
        return self
    }
}
