//
//  ViewController.swift
//  TipMe
//
//  Created by Maliha Fairooz on 12/11/15.
//  Copyright © 2015 Maliha Fairooz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var BillLabel: UILabel!
    @IBOutlet weak var TotalLabel: UILabel!
    @IBOutlet weak var TipNoLabel: UILabel!
    @IBOutlet weak var TipControl: UISegmentedControl!

    @IBOutlet weak var BillField: UITextField!
    @IBOutlet weak var TotalNoLabel: UILabel!
    @IBOutlet weak var TipLabel: UILabel!
    
    @IBAction func SplitButton(sender: AnyObject) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        TipNoLabel.text = "$0.00"
        TotalNoLabel.text = "$0.00"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
        
        var tipPercentages = [0.1, 0.15, 0.2]
        let tipPercentage = tipPercentages[TipControl.selectedSegmentIndex]
        
        let BillAmount = NSString(string:BillField.text!).doubleValue
        
        let tip = BillAmount * tipPercentage
        let total = tip + BillAmount
        
        TipNoLabel.text = String(format: "$%.2f", tip)
        TotalNoLabel.text = String(format: "$%.2f", total)
        
        
        
        
        
    }
    @IBAction func onTap(sender: AnyObject) {
    view.endEditing(true)

    
    }

}

