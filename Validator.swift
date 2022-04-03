//
//  Validator.swift
//  ArOrEn
//
//  Created by nura.
//

import Foundation
import UIKit

protocol ValidatorProtocol {
    func arabicOnly(text: String) ->Bool
    func englishOnly(text: String) -> Bool
}

class Validator: ValidatorProtocol {
    static let shared: ValidatorProtocol = Validator()
   
    //Accept arabic only
    func arabicOnly(text: String) -> Bool {
        let userRegex = "^[ء-ي٠-٩ ًٌٍَُِّ]+$"
        let userTest = NSPredicate(format: "SELF MATCHES %@", userRegex)
        return userTest.evaluate(with: text)
    }
    
    
    func englishOnly(text: String) -> Bool {
        let userRegex = "^[0-9a-zA-Z !@#$%&()\\-\".,،؟?/]+$"
        let userTest = NSPredicate(format: "SELF MATCHES %@", userRegex)
        return userTest.evaluate(with: text)
    }

}




