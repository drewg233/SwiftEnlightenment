//
//  ViewController.swift
//  Project 4 - Simple Stopwatch
//
//  Created by Andrew Garcia on 3/15/16.
//  Copyright © 2016 Andrew Garcia. All rights reserved.
//

import UIKit
import Font_Awesome_Swift

class ViewController: UIViewController {
    
    // IBOutlets
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var pauseButton: UIButton!
    
    var swiftTimer = NSTimer()
    var swiftCounter = 0.00
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        timerLabel.text = String(swiftCounter)
        
        playButton.setFAIcon(FAType.FAPlay, iconSize: 35, forState: .Normal)
        pauseButton.setFAIcon(FAType.FAPause, iconSize: 35, forState: .Normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func playButtonAction(sender: AnyObject) {
        swiftTimer = NSTimer.scheduledTimerWithTimeInterval(0.02, target:self, selector: Selector("updateCounter"), userInfo: nil, repeats: true)
        print("Timer Started")
        
        playButton.enabled = false
        pauseButton.enabled = true
    }

    @IBAction func pauseButtonAction(sender: AnyObject) {
        swiftTimer.invalidate()
        print("Timer Paused")
        
        playButton.enabled = true
        pauseButton.enabled = false
    }
    
    @IBAction func resetButtonAction(sender: AnyObject) {
        swiftTimer.invalidate()
        swiftCounter = 0.00
        timerLabel.text = String(format: "%.02f", swiftCounter)
        
        playButton.enabled = true
        pauseButton.enabled = true
    }
    
    
    func updateCounter() {
        swiftCounter = swiftCounter + 0.02
        timerLabel.text = String(format: "%.02f", swiftCounter)
    }
    
    
}

