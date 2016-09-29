//
//  ViewController.swift
//  TipCalculator
//
//  Created by Andres Diaz on 9/25/16.
//  Copyright © 2016 Andres Diaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    var currentString = ""
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
       override func viewDidLoad() {
        super.viewDidLoad()
        
        billField.becomeFirstResponder()
        // Do any additional setup after loading the view, typically from a nib.
     
    }
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
   
        let defaults = NSUserDefaults.standardUserDefaults();
        let tipValue = defaults.integerForKey("tipValue");
        tipControl.selectedSegmentIndex = tipValue;
        
    }
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func calculateTotalBill(sender: AnyObject) {
        let percentages = [0.18,0.2,0.25];
        
        
               let bill = Double(billField.text!) ?? 0;
        let currentTip = bill  * percentages[tipControl.selectedSegmentIndex];
        tipLabel.text = String(format: "$%.2f",currentTip)
        totalLabel.text =  String(format: "$%.2f",  bill + currentTip)
    }
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
    
    
}

