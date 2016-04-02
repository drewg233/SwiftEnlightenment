//
//  ViewController.swift
//  Project 1 - Tap Counter
//
//  Created by Andrew Garcia on 3/15/16.
//  Copyright © 2016 Andrew Garcia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var countLabel: UILabel!
    
    var count = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        countLabel.text = "\(count)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func mainTapButtonAction(sender: AnyObject) {
        count += 1
        countLabel.text = "\(count)"
    }

    @IBAction func resetButtonAction(sender: AnyObject) {
        count = 0
        countLabel.text = "\(count)"
    }

}

