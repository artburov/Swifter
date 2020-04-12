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
              
        labelText.text = textField.text! + " " + labelText.text!
    }
    
}

