//
//  MainViewController.swift
//  Tip Calculator
//
//  Created by michael adams on 10/19/15.
//  Copyright © 2015 michael adams. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var slider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func sliderValueChanged(sender: UISlider) {
        
            let currentValue = Int(sender.value)
            
            text.text = "\(currentValue)"
        
        print("Hello")
    }
    @IBOutlet weak var text: UITextField!
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
