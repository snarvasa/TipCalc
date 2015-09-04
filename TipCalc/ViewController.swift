//
//  ViewController.swift
//  TipCalc
//
//  Created by Sean Narvasa on 9/3/15.
//  Copyright (c) 2015 Sean Narvasa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var TipSegmentedControl: UISegmentedControl!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBAction func newTipPercentageSelected(sender: AnyObject) {
        calculateTip()  //calls the calculateTip method
        }
    
    @IBAction func billAmountChanged(sender: AnyObject) {
        calculateTip() //calls the calculateTip method
        }
    
    func calculateTip(){
        var index = TipSegmentedControl.selectedSegmentIndex
        var billAmount = (billTextField.text as NSString).doubleValue
        var tipPercentage = 0.0
        if index == 0 {
            tipPercentage = 0.18
        }
        if index == 1 {
            tipPercentage = 0.20
        }
        if index == 2 {
            tipPercentage = 0.22
        }
        var tipAmount = billAmount * tipPercentage     //calcs the tipAmount
        var totalAmount = billAmount + tipAmount       //calcs the totalAmount
        
        tipLabel.text = String(format: "$%.2f", tipAmount)
        // converts the double into a string and gets two decimal places
        totalLabel.text = String(format: "$%.2f", totalAmount)
    }
}