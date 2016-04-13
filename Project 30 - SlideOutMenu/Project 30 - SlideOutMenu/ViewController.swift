//
//  ViewController.swift
//  Project 30 - SlideOutMenu
//
//  Created by Andrew Garcia on 4/12/16.
//  Copyright © 2016 Andrew Garcia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var openButton: UIBarButtonItem!
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        openButton.target = self.revealViewController()
        openButton.action = #selector(SWRevealViewController.revealToggle)
        
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
    }


}

