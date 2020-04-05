//
//  SettingsViewController.swift
//  tippy
//
//  Created by Maha Malik on 4/4/20.
//  Copyright © 2020 Maha Malik. All rights reserved.
//

import UIKit


class SettingsViewController: UIViewController {
    
    @IBOutlet weak var defaultTipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
     override func viewWillAppear(_ animated: Bool) {
           super.viewWillAppear(animated)
           // This is a good place to retrieve the default tip percentage from UserDefaults
           // and use it to update the tip amount
           let indexValue = defaults.integer(forKey: "defaultTipIndex")
           defaultTipControl.selectedSegmentIndex = indexValue
           
       }
    
    @IBAction func defaultTipChange(_ sender: Any) {
        let tipPercentages = [0.15, 0.18, 0.2]
        defaults.set(tipPercentages[defaultTipControl.selectedSegmentIndex], forKey: "defaultTip")
        defaults.set(defaultTipControl.selectedSegmentIndex, forKey: "defaultTipIndex")
        
        defaults.synchronize()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
