//
//  ZipCodeTextFieldDelegate.swift
//  Delegates Challenge App
//
//  Created by TJ on 11/21/18.
//  Copyright © 2018 TJ. All rights reserved.
//

import UIKit

class ZipCodeTextFieldDelegate : NSObject, UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let invalidCharacters = CharacterSet(charactersIn: "0123456789").inverted
            if range.location < 5 {
                return string.rangeOfCharacter(from: invalidCharacters) == nil
            } else {
                return false
            }
        return false
    }
}
