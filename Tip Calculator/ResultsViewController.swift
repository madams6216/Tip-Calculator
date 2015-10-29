//
//  ResultsViewController.swift
//  Tip Calculator
//
//  Created by michael adams on 10/19/15.
//  Copyright © 2015 michael adams. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    
   
    @IBOutlet weak var Label: UILabel!
    @IBOutlet weak var TipLabel: UILabel!
    @IBOutlet weak var TotalLabel: UILabel!
    @IBOutlet weak var SplitTotalLabel: UILabel!
    
    var tipAmount: Int = 0
    var billAmount: Double = 0
    var personCount: Int = 0
    
    override func viewDidLoad() {
        
        let total = billAmount + (billAmount * (Double(tipAmount)/100))
        let splitAmount = total / Double(personCount)
        
        Label.text = "$" + String(billAmount)
        TipLabel.text = String(tipAmount) + "%"
        TotalLabel.text = "$" + String(total)
        SplitTotalLabel.text = "$" + String(splitAmount)
        
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

}
