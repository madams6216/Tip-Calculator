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
    
    @IBOutlet weak var text: UITextField!
    
    
    @IBOutlet var slider2: UISlider!
    
    @IBOutlet var text2: UITextField!
    
    
    
    @IBOutlet weak var TextField: UITextField!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let DestViewController : ResultsViewController = segue.destinationViewController as! ResultsViewController
        
        DestViewController.LabelText = TextField.text!
    }
    
    
    @IBAction func slider2ValueChanged(sender: UISlider) {
        let currentValue = Int(sender.value)
        
        text2.text = "\(currentValue)"
    
    
    
       }

    @IBAction func sliderValueChanged(sender: UISlider) {
        
            let currentValue = Int(sender.value)
            
            text.text = "\(currentValue)"
        
        print("Hello")
    }
    
        }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


