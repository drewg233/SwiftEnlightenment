//
//  ViewController.swift
//  Project 24 - Localizations
//
//  Created by Andrew Garcia on 4/2/16.
//  Copyright © 2016 Andrew Garcia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var helloWorldLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setUpView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func setUpView() {
        self.helloWorldLabel.text = NSLocalizedString("Hello", comment: "Just saying hello.")
    }

}


