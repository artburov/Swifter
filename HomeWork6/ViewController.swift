//
//  ViewController.swift
//  HomeWork6
//
//  Created by Admin on 12.04.2020.
//  Copyright © 2020 Khan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var labelText: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func pressBtn(_ sender: Any) {
        
        let textValue: Int = Int(textField.text!)!
        
        if textValue % 2 == 0 {
            let powResult = Int(pow(Double(2),Double(textValue)))
            
            labelText.text = String(powResult)
        }else {
            labelText.text = "Enter an integer in the text field"
        }
    }
}
