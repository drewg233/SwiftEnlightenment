//
//  ViewController.swift
//  Project 25 - BasicAnimations
//
//  Created by Andrew Garcia on 4/2/16.
//  Copyright © 2016 Andrew Garcia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!

    @IBOutlet weak var centerUserNameTextField: NSLayoutConstraint!
    @IBOutlet weak var centerPasswordTextField: NSLayoutConstraint!
    @IBOutlet weak var centerLoginButton: NSLayoutConstraint!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        loginButton.layer.cornerRadius = 5
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        centerUserNameTextField.constant -= view.bounds.width
        centerPasswordTextField.constant -= view.bounds.width
        centerLoginButton.constant -= view.bounds.width
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animateWithDuration(0.5, delay: 0.00, options: .CurveEaseOut, animations: {
            
            self.centerUserNameTextField.constant += self.view.bounds.width
            self.view.layoutIfNeeded()
            
        }, completion: nil)
        
        
        UIView.animateWithDuration(0.5, delay: 0.25, options: .CurveEaseOut, animations: {
            
            self.centerPasswordTextField.constant += self.view.bounds.width
            self.view.layoutIfNeeded()
            
        }, completion: nil)
        
        UIView.animateWithDuration(0.5, delay: 0.50, options: .CurveEaseOut, animations: {
            
            self.centerLoginButton.constant += self.view.bounds.width
            self.view.layoutIfNeeded()
            
        }, completion: nil)
        
    }
    
    
    
    @IBAction func loginButtonAction(sender: AnyObject) {
        UIView.animateWithDuration(0.5, delay: 0.00, options: .CurveEaseOut, animations: {
            
            self.centerUserNameTextField.constant += self.view.bounds.width
            self.view.layoutIfNeeded()
            
        }, completion: nil)
        
        UIView.animateWithDuration(0.5, delay: 0.25, options: .CurveEaseOut, animations: {
            
            self.centerPasswordTextField.constant += self.view.bounds.width
            self.view.layoutIfNeeded()
            
        }, completion: nil)
        
        UIView.animateWithDuration(0.5, delay: 0.50, options: .CurveEaseOut, animations: {
            
            self.centerLoginButton.constant += self.view.bounds.width
            self.view.layoutIfNeeded()
            
        }, completion: nil)
        
        
        UIView.animateWithDuration(0.5, delay: 0.00, options: .CurveEaseOut, animations: {
            
            self.welcomeLabel.alpha = 0
            self.view.layoutIfNeeded()
            
        }, completion: nil)
    }
    

}

