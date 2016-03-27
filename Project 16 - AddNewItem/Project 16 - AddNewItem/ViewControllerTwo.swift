//
//  ViewControllerTwo.swift
//  Project 16 - AddNewItem
//
//  Created by Andrew Garcia on 3/27/16.
//  Copyright © 2016 Andrew Garcia. All rights reserved.
//

import UIKit

class ViewControllerTwo: UIViewController {
    
    @IBOutlet weak var dataTextField: UITextField!
    @IBOutlet weak var addToListButton: UIButton!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        addToListButton.layer.cornerRadius = 5
        textField.layer.cornerRadius = 5
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let destViewController : ViewController = segue.destinationViewController as! ViewController
        
        destViewController.newItem = dataTextField.text!
    }

}
