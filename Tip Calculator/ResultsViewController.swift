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
    
    
    var LabelText = String()
    
    @IBOutlet weak var TipLabel: UILabel!
    var TipLabelText = String()
    
    
    
    @IBOutlet weak var TotalLabel: UILabel!
    var TotalLabelText = String()

    @IBOutlet weak var SplitTotalLabel: UILabel!
    var SplitTotalLabelText = String()

    override func viewDidLoad() {
        
        Label.text = LabelText
        TipLabel.text = "$0.00"
        TotalLabel.text = "$0.00"
        SplitTotalLabel.text = "$0.00"
        
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
