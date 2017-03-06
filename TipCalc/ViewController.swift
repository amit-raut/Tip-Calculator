//
//  ViewController.swift
//  TipCalc
//
//  Created by AR on 3/5/17.
//  Copyright © 2017 AR. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipSelectorSegControl: UISegmentedControl!
    @IBOutlet weak var billLabel: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalAmountLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTapHideKeyboard(_ sender: Any) {
        view.endEditing(true)
    }

    
    @IBAction func calculateTip(_ sender: Any) {
            let tipPercentArray = [0.18, 0.20, 0.25]
            let bill = Double(billLabel.text!) ?? 0
            let tip  = bill * tipPercentArray[tipSelectorSegControl.selectedSegmentIndex]
            let total = bill + tip
            tipLabel.text = String(format: "$%.2f", tip)
            totalAmountLabel.text = String(format: "$%.2f", total)
    }
    
    @IBAction func calculateTipOnAmountEditing(_ sender: Any) {
            let tipPercentArray = [0.18, 0.20, 0.25]
            let bill = Double(billLabel.text!) ?? 0
            let tip  = bill * tipPercentArray[tipSelectorSegControl.selectedSegmentIndex]
            let total = bill + tip
            tipLabel.text = String(format: "$%.2f", tip)
            totalAmountLabel.text = String(format: "$%.2f", total)
    }
}

