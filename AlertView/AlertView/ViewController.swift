//
//  ViewController.swift
//  AlertView
//
//  Created by Andrew Garcia on 3/11/16.
//  Copyright © 2016 Andrew Garcia. All rights reserved.
//

import UIKit
import FlatUIKit
import ChameleonFramework

class ViewController: UIViewController {
    
    @IBOutlet weak var showAlertButton: FUIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpUI()
    }
    
    // # setUpUI
    // Sets up the initial UI for when the app loads.
    func setUpUI() {
        showAlertButton.buttonColor = UIColor.flatSkyBlueColor()
        showAlertButton.shadowColor = UIColor.flatSkyBlueColorDark()
        showAlertButton.shadowHeight = 3.0
        showAlertButton.cornerRadius = 6.0
        showAlertButton.titleLabel?.font = UIFont.boldFlatFontOfSize(16)
        showAlertButton.setTitleColor(UIColor.cloudsColor(), forState: UIControlState.Normal)
        
        self.view.backgroundColor = UIColor.flatWhiteColor()
    }
    
    // # showAlertAction
    // Displays an alert when the button is pressed.
    @IBAction func showAlertAction(sender: AnyObject) {
        let alertController = UIAlertController(title: "Hello World!", message:
            "My Name is Andrew Garcia.", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Okay Cool!", style: UIAlertActionStyle.Default,handler: nil))
        
        self.presentViewController(alertController, animated: true, completion: nil)
    }

}

