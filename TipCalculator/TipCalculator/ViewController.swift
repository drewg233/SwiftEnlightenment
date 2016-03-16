//
//  ViewController.swift
//  TipCalculator
//
//  Created by Andrew Garcia on 3/11/16.
//  Copyright © 2016 Andrew Garcia. All rights reserved.
//

import UIKit
import FlatUIKit
import ChameleonFramework

class ViewController: UIViewController {

    @IBOutlet weak var mainTextField: UITextField!
    @IBOutlet weak var mySlider: UISlider!
    @IBOutlet weak var tipPercentLabel: UILabel!
    @IBOutlet weak var tipValue: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainTextField.addTarget(self, action: "textFieldDidChange:", forControlEvents: UIControlEvents.EditingChanged)
        
        setUpUI()
    }
    
    
    /**
     # setUpUI
     Sets up the initial UI for when the app loads.
     */
    func setUpUI() {
        self.view.backgroundColor = UIColor.flatGrayColor()
        
        mainTextField.backgroundColor = UIColor.flatGrayColor()
        mainTextField.returnKeyType = .Done
        
        mySlider.configureFlatSliderWithTrackColor(UIColor.silverColor(), progressColor: UIColor.alizarinColor(), thumbColor: UIColor.pomegranateColor())
    }
    
    /**
     # textFieldDidChange
     Detects change on text field. Then calls the updateTip function.
     */
    func textFieldDidChange(textField: UITextField) {
        updateTip()
    }
    
    /**
     # mySliderValueChanged
     Detects change on slider. Then calls the updateTip function.
     */
    @IBAction func mySliderValueChanged(sender: UISlider) {
        let currentValue = Int(sender.value)
        tipPercentLabel.text = "Tip (\(currentValue)%)"
        updateTip()
    }
    
    /**
     # updateTip
     Updates the labels with the correct tip and totals.
     */
    func updateTip() {
        if (self.mainTextField.text != "" && Double(self.mainTextField.text!) > 0) {
            let tipValue = Double(self.mainTextField.text!)! * Double(mySlider.value) / 100.00
            let totalValue = Double(self.mainTextField.text!)! + tipValue
            
            self.tipValue.text = "$\(String(format:"%.2f", tipValue))"
            self.totalLabel.text = "$\(String(format:"%.2f", totalValue))"
        }
    }
    

}

