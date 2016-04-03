//
//  ViewController.swift
//  Project 27 - LimitingCharacters
//
//  Created by Andrew Garcia on 4/3/16.
//  Copyright © 2016 Andrew Garcia. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var charactersLeftLabel: UILabel!
    
    var startingCharacters = 30
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myTextField.delegate = self
        
        charactersLeftLabel.text = "\(startingCharacters) Characters Left"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        if range.length + range.location > myTextField.text?.characters.count {
            return false
        }
        
        let newLength = (myTextField.text?.characters.count)! + string.characters.count - range.length
        
        return newLength <= startingCharacters
    }
    
    
    @IBAction func editedTextField(sender: AnyObject) {
        let charLeft = startingCharacters - (myTextField.text?.characters.count)!
        charactersLeftLabel.text = "\(charLeft) Characters Left"
    }


}

