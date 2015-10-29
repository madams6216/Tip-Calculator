//
//  MainViewController.swift
//  Tip Calculator
//
//  Created by michael adams on 10/19/15.
//  Copyright © 2015 michael adams. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var text: UITextField!
    
    
    @IBOutlet var slider2: UISlider!
    
    @IBOutlet var text2: UITextField!
    
    
    
    @IBOutlet weak var TextField: UITextField!
    
    var tipAmount : Int?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
        view.addGestureRecognizer(tap)
    }
    
    //Calls this function when the tap is recognized.
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    

        TextField.delegate = self
//        TextField.keyboardType = UIKeyboardType.Default
        TextField.returnKeyType = UIReturnKeyType.Done
        
        
        // Do any additional setup after loading the view.
    }

    
    
    //Text Field Delegate
    
    @objc func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        print("Resign First Responder")
        TextField.resignFirstResponder()
        
        return true;
        
        
      
    }
    
    
    
    
    func textFieldDidBeginEditing(textField: UITextField) {
        print("This works")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
        
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let DestViewController : ResultsViewController = segue.destinationViewController as! ResultsViewController
        
        DestViewController.billAmount = Double(TextField.text!)!
        DestViewController.tipAmount = tipAmount!
        DestViewController.personCount = Int(text2.text!)!
        
    }
    
    
    @IBAction func slider2ValueChanged(sender: UISlider) {
        let currentValue = Int(sender.value)
        
        text2.text = "\(currentValue)"
        tipAmount = currentValue
           
       }

    @IBAction func sliderValueChanged(sender: UISlider) {
        
            let currentValue = Int(sender.value)
            
            text.text = "\(currentValue)%"
        slider.resignFirstResponder()
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


