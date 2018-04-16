//
//  Rule.swift
//  Validator
//
//  Created by Quy Cao Quoc on 4/14/18.
//

public protocol Rule {
    
    func validate(value: String) -> Bool
    var errorMessage: String { get }
}
