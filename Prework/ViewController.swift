//
//  ViewController.swift
//  Prework
//
//  Created by Kristy Shaffer on 7/14/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        billAmountTextField.becomeFirstResponder()
        //sets the tittle in the navegation bar
        self.title = "Tip calculator"
    }

    @IBAction func calculateTip(_ sender: Any) {
        //get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        //get total Tip by multiplying tip*teippercentage
        let tipPercentages = [0.15,0.18,0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // update Tip amound Label
        tipAmountLabel.text = String(format: "$%.2f",tip)
        //Update Total Amount
        totalLabel.text = String(format: "$%.2f",total)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
        //this is a doo place to retrive the default tip percentage from userDefaults
        //and use it to update the tip amount
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view will appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("View will disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool){
        super.viewDidDisappear(animated)
        print("view did disappear")
    }
}

