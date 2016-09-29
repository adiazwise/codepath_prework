//
//  SettingsViewController.swift
//  TipCalculator
//
//  Created by Andres Diaz on 9/25/16.
//  Copyright © 2016 Andres Diaz. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var settingControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
 
    @IBAction func setTip(sender: AnyObject) {
        
        let defaults = NSUserDefaults.standardUserDefaults();
        
        defaults.setInteger(settingControl.selectedSegmentIndex, forKey: "tipValue");
        defaults.synchronize();

        
        
    }
}
