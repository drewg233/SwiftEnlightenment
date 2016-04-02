//
//  ViewController.swift
//  AlertView
//
//  Created by Andrew Garcia on 3/11/16.
//  Copyright © 2016 Andrew Garcia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var showAlertButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        showAlertButton.layer.cornerRadius = 10
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /**
     # showAlertAction
     Displays an alert when the button is pressed.
    */
    @IBAction func showAlertAction(sender: AnyObject) {
        let alertController = UIAlertController(title: "Hello World!", message:
            "My Name is Andrew Garcia.", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Okay Cool!", style: UIAlertActionStyle.Default,handler: nil))
        
        self.presentViewController(alertController, animated: true, completion: nil)
    }

}

