//
//  ViewController.swift
//  HomeWork6
//
//  Created by Admin on 12.04.2020.
//  Copyright © 2020 Khan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var secondTextField: UITextField!
    
    @IBOutlet weak var operatorTextField: UITextField!
    
    
    @IBAction func calculateBtn(_ sender: Any) {
        if firstTextField.text!.isNumeric && secondTextField.text!.isNumeric {
            
            let firstNumber = firstTextField.text
            let secondNumber = secondTextField.text
            let operatorSelected = operatorTextField.text
            
            switch operatorSelected {
            case "+":
                let operationAdd = Int(Int(firstNumber!)! + Int(secondNumber!)!)
                resultLabel.text = String(operationAdd)
            case "-":
                let operationAdd = Int(Int(firstNumber!)! - Int(secondNumber!)!)
                resultLabel.text = String(operationAdd)
            case "*":
                let operationAdd = Int(Int(firstNumber!)! * Int(secondNumber!)!)
                resultLabel.text = String(operationAdd)
            case "/":
                let operationAdd = Int(Int(firstNumber!)! / Int(secondNumber!)!)
                resultLabel.text = String(operationAdd)
            default:
                resultLabel.text = "Incorrect input"
            }
        } else {
            resultLabel.text = "Only integer allowed"
        }
    }
}

extension String {
    var isNumeric : Bool {
      return NumberFormatter().number(from: self) != nil
    }
}
