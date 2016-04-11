//
//  ViewController.swift
//  Project 29 - FullScreenAd
//
//  Created by Andrew Garcia on 4/11/16.
//  Copyright © 2016 Andrew Garcia. All rights reserved.
//

import UIKit
import iAd

class ViewController: UIViewController, ADBannerViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(1 * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), {
                self.requestInterstitialAdPresentation()
        })
    }


}

