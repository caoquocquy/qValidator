# qValidator

[![CI Status](http://img.shields.io/travis/quytinypulse/qValidator.svg?style=flat)](https://travis-ci.org/caoquocquy/qValidator)
[![Version](https://img.shields.io/cocoapods/v/qValidator.svg?style=flat)](http://cocoapods.org/pods/qValidator)
[![License](https://img.shields.io/cocoapods/l/qValidator.svg?style=flat)](http://cocoapods.org/pods/qValidator)
[![Platform](https://img.shields.io/cocoapods/p/qValidator.svg?style=flat)](http://cocoapods.org/pods/qValidator)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

qValidator is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'qValidator'
```

## Usage 

You can now import Validator framework.

```swift
import qValidator
```

Add the fields that you want to validate

```swift
let validator = Validator()

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

let errorMessages = validator.validate()
```

## Author

Quy Cao, quy.caoquoc@gmail.com

## License

Validator is available under the MIT license. See the LICENSE file for more info.
