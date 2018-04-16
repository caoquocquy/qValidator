//
//  Validator.swift
//  Validator
//
//  Created by Quy Cao Quoc on 4/14/18.
//

public class Validator {
    
    public init(validations: [Validation] = []){
        self.validations = validations
    }
    
    private var validations: [Validation]
    
    public func add(validation: Validation) {
        validations.append(validation)
    }
    
    public func validate() -> [String] {
        return validations.reduce([], { $0 + $1.validate() })
    }
}
