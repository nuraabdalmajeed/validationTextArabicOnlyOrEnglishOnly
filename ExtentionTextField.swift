//
//  ExtensionTextField.swift
//  ArOrEn
//
//  Created by noura on 4/3/22.
//

import Foundation
import UIKit

extension UITextField {
    
    func EnglishOnly (vc : UIViewController)->(Bool) {
        if  Validator.shared.englishOnly(text: self.text ?? "")  ==  false {
            if self.text?.isEmpty == false{
                self.text?.removeLast()
            }
            // any indication for  error
            // showError(message: "Accept English only")
            return false
            
        }else{
            return true
        }
    }
    
    func ArabicOnly (vc : UIViewController)->(Bool) {
        if  Validator.shared.arabicOnly(text: self.text ?? "")  ==  false {
            if self.text?.isEmpty == false{
                self.text?.removeLast()
            }
            // any indication for  error
            // showError(message: "Accept Arabic only")
            return false
            
        }else{
            return true
        }
        
    }
    
}
