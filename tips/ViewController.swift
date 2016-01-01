//
//  ViewController.swift
//  tips
//
//  Created by Fer on 12/31/15.
//  Copyright © 2015 Fernando Mendoza. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tipControl: UISegmentedControl!
    @IBOutlet var totalLabel: UILabel!
    @IBOutlet var billField: UITextField!
    @IBOutlet var tipLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        tipLabel.text   =   "$0.00"
        totalLabel.text =   "$0.00"
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
        let tipPercentages = [0.18, 0.2, 0.22]
        let tipPercentage   =   tipPercentages[tipControl.selectedSegmentIndex]
        
        let billAmount  =   (billField.text! as NSString).doubleValue
        let tip   =   billAmount * tipPercentage
        let total =   billAmount + tip
        
        tipLabel.text   =   String(format: "$%0.2f", tip)
        totalLabel.text =   String(format: "$%0.2f", total)
        
    }

}

