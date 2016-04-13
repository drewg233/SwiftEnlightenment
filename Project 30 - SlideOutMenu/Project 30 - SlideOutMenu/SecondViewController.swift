//
//  SecondViewController.swift
//  Project 30 - SlideOutMenu
//
//  Created by Andrew Garcia on 4/12/16.
//  Copyright © 2016 Andrew Garcia. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }

    override func viewDidLoad() {
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
    }

}
