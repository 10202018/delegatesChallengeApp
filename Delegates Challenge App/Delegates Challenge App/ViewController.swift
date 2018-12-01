//
//  ViewController.swift
//  Delegates Challenge App
//
//  Created by TJ on 11/21/18.
//  Copyright © 2018 TJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    // MARK: Properties
    let zipCodeTextFieldDelegate = ZipCodeTextFieldDelegate()
    let dollarTextFieldDelegate = DollarTextFieldDelegate()
    
    
    // MARK: Outlets
    @IBOutlet weak var tf1: UITextField!
    @IBOutlet weak var tf2: UITextField!
    @IBOutlet weak var tf3: UITextField!
    @IBOutlet weak var count: UILabel!
    @IBOutlet weak var switchFlip: UISwitch!
    

    // MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tf1.delegate = zipCodeTextFieldDelegate
        self.tf2.delegate = dollarTextFieldDelegate
        self.tf3.delegate = self
        self.switchFlip.setOn(true, animated: true)
    }
    
    // MARK: Text Field Delegate
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if !switchFlip.isOn {
            return false
        } else {
            return true
        }
    }
    
    
    //
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    



}

