//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Taylor Ngo on 6/9/21.
//  112626118
//  taylor.ngo@stonybrook.edu
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        billInput.delegate = self
    }
    
    @IBAction func fifteenPercentTip(_ sender: Any) {
        if let bill = Double(billInput.text!){
            let total = round((bill * 1.15) * 100) / 100
            let tipAmount = round((bill * 0.15) * 100) / 100
            tipAmountLabel.text = "Tip Amount: $" + String(tipAmount)
            totalLabel.text = "Total: $" + String(total)
        }
        else{
            return
        }
    }
    
    @IBAction func eighteenPercentTip(_ sender: Any) {
        if let bill = Double(billInput.text!){
            let total = round((bill * 1.18) * 100) / 100
            let tipAmount = round((bill * 0.18) * 100) / 100
            tipAmountLabel.text = "Tip Amount: $" + String(tipAmount)
            totalLabel.text = "Total: $" + String(total)
        }
        else{
            return
        }
    }
    
    @IBAction func twentyPercentTip(_ sender: Any) {
        if let bill = Double(billInput.text!){
            let total = round((bill * 1.20) * 100) / 100
            let tipAmount = round((bill * 0.20) * 100) / 100
            tipAmountLabel.text = "Tip Amount: $" + String(tipAmount)
            totalLabel.text = "Total: $" + String(total)
        }
        else{
            return
        }
    }
    
    
}

