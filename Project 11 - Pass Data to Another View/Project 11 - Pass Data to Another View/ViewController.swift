//
//  ViewController.swift
//  Project 11 - Pass Data to Another View
//
//  Created by Andrew Garcia on 3/23/16.
//  Copyright © 2016 Andrew Garcia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dataTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let destViewController : ViewControllerTwo = segue.destinationViewController as! ViewControllerTwo
        
        destViewController.dataLabelText = dataTextField.text!
    }

}

