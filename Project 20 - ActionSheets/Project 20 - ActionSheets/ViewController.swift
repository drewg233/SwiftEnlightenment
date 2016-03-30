//
//  ViewController.swift
//  Project 20 - ActionSheets
//
//  Created by Andrew Garcia on 3/29/16.
//  Copyright © 2016 Andrew Garcia. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIActionSheetDelegate {

    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var shareButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        shareButton.layer.cornerRadius = 10
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func shareButtonAction(sender: AnyObject) {
        let alertController = UIAlertController(title: nil, message: "Choose what you would like to share to.", preferredStyle: .ActionSheet)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel) { (action) in
            print("Cancel button pressed..")
        }
        alertController.addAction(cancelAction)
        
        let FacebookAction = UIAlertAction(title: "Facebook", style: .Default) { (action) in
            self.textLabel.text = "You chose to share to FB!"
            print("Facebook button pressed..")
        }
        alertController.addAction(FacebookAction)
        
        let TwitterAction = UIAlertAction(title: "Twitter", style: .Default) { (action) in
            self.textLabel.text = "You chose to share to Twitter!"
            print("Twitter button pressed..")
        }
        alertController.addAction(TwitterAction)
        
        let InstagramAction = UIAlertAction(title: "Instagram", style: .Default) { (action) in
            self.textLabel.text = "You chose to share to Instagram!"
            print("Instagram button pressed..")
        }
        alertController.addAction(InstagramAction)
        
        self.presentViewController(alertController, animated: true) {
            // ...
        }
    }

}

