//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Center for Innovation on 2/11/20.
//  Copyright © 2020 Center for Innovation. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Bolaji2: UILabel!
    @IBOutlet weak var Bolaji1: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var Textfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func Gesture(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func Ololufemi(_ sender: Any) {
        //1. Get bill amount
        let bill = Double(Textfield.text!) ?? 0
        //2. Calculate the tip and total
        let tipPercentages = [0.15, 0.18, 0.20]
        let tip = bill * tipPercentages [tipControl.selectedSegmentIndex]
        let total = bill + tip
        //3. Update the tip and total lables
        Bolaji1.text = String(format: "$%.2f", tip)
        Bolaji2.text = String(format: "%.2f", total)
        print("hello")
    }
}

