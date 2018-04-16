//
//  Validation.swift
//  Validator
//
//  Created by Quy Cao Quoc on 4/14/18.
//

public class Validation {
    
    private var validatable: Validatable
    private var rules: [Rule] = []
    
    public init(validatable: Validatable) {
        self.validatable = validatable
    }
    
    public func add(rule: Rule) {
        rules.append(rule)
    }
    
    public func validate() -> [String] {
        return rules
            .filter { !$0.validate(value: validatable.validationText) }
            .map { $0.errorMessage }
    }
}
