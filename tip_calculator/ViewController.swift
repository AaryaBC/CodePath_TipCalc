//
//  ViewController.swift
//  tip_calculator
//
//  Created by Aarya BC on 12/25/16.
//  Copyright © 2016 Aarya BC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var tipAmount: UILabel!
    @IBOutlet weak var totalAmount: UILabel!
    @IBOutlet weak var billAmount: UITextField!
    @IBOutlet weak var bill1Person: UILabel!
    @IBOutlet weak var bill2Person: UILabel!
    @IBOutlet weak var bill3Person: UILabel!
    @IBOutlet weak var bill4Person: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculate(_ sender: AnyObject) {
        let tipPercentages = [0.18,0.2,0.25,0.3]
        let totalBill = Double(billAmount.text!) ?? 0
        let totalTip = totalBill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = totalBill + totalTip
        tipAmount.text = String(format: "$%.2f", totalTip)
        totalAmount.text = String(format: "$%.2f", total)
        bill1Person.text = String(format: "$%.2f", total)
        bill2Person.text = String(format: "$%.2f", total/2)
        bill3Person.text = String(format: "$%.2f", total/3)
        bill4Person.text = String(format: "$%.2f", total/4)
    }
}

