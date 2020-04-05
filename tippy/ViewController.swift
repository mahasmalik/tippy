//
//  ViewController.swift
//  tippy
//
//  Created by Maha Malik on 4/4/20.
//  Copyright © 2020 Maha Malik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        // Get the bill amount
        let bill = Double(billField.text!) ?? 0 // invalid input is 0
        let tipPercentages = [0.15, 0.18, 0.2]
        
        // Calculate the tip and total
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Update the tip and total label
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    @IBAction func resetTap(_ sender: Any) {
        
        billField.text = ""
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
    }
}

