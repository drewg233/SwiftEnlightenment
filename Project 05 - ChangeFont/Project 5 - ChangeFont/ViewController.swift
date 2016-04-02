//
//  ViewController.swift
//  Project 5 - ChangeFont
//
//  Created by Andrew Garcia on 3/22/16.
//  Copyright © 2016 Andrew Garcia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pressMeButton: UIButton!
    @IBOutlet weak var helloWorldLabel: UILabel!
    
    var fontNumber = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        pressMeButton.layer.cornerRadius = 5
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func pressMeAction(sender: AnyObject) {
        if (fontNumber == 1) {
            helloWorldLabel.font = UIFont(name: "RBNo2 Light", size: 60)
            fontNumber = 2
        } else {
            helloWorldLabel.font = UIFont(name: "Market Deco", size: 40)
            fontNumber = 1
        }
    }


}

