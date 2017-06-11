//
//  ViewController.swift
//  TipCal
//
//  Created by ravi subedi on 6/11/17.
//  Copyright © 2017 ravi subedi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var amountBeforeTip: UITextField!
    @IBOutlet weak var tipPercent: UISegmentedControl!
    @IBOutlet weak var tipAmount: UITextField!
    @IBOutlet weak var totalAmount: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var preferredStatusBarStyle: UIStatusBarStyle {
            return .lightContent
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func percentCal(_ sender: UISegmentedControl) {
            let amount = Double(amountBeforeTip.text!)
            switch tipPercent.selectedSegmentIndex{
            case 0: tipAmount.text = String(amount! * (15 / 100))
            case 1: tipAmount.text = String(amount! * (25 / 100))
            case 2: tipAmount.text = String(amount! * (30 / 100))
            default: tipAmount.text = "Enter tip Amount"
            }
        
    }

    @IBAction func calculate(_ sender: UIButton) {
        let amount = Double(amountBeforeTip.text!)
        let tip = Double(tipAmount.text!)
        let totalBill = amount! + tip!
        totalAmount.text = " $ \(String(totalBill))"
    }

}

