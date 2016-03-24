//
//  ViewController.swift
//  Project 10 - CurrentTime
//
//  Created by Andrew Garcia on 3/23/16.
//  Copyright © 2016 Andrew Garcia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dateTimeLabel: UILabel!
    @IBOutlet weak var updateTimeButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateTimeButton.layer.cornerRadius = 10
        updateTimeStamp()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateTimeStamp() {
        let timestamp = NSDateFormatter.localizedStringFromDate(NSDate(), dateStyle: .MediumStyle, timeStyle: .MediumStyle)
        dateTimeLabel.text = timestamp
    }
    
    @IBAction func updateTimeAction(sender: AnyObject) {
        updateTimeStamp()
    }
    
}

