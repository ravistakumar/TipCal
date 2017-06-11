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
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

