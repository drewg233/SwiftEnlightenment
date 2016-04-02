//
//  ViewController.swift
//  Project21 - VideoBackground
//
//  Created by Andrew Garcia on 3/29/16.
//  Copyright © 2016 Andrew Garcia. All rights reserved.
//

import UIKit

class ViewController: VideoSplashViewController {
    
    
    @IBOutlet weak var createNewButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        setupButtons()
        setupVideoBackground()
    }
    
    private func setupVideoBackground() {
        let url = NSURL.fileURLWithPath(NSBundle.mainBundle().pathForResource("sample", ofType: "mp4")!)
        
        videoFrame = view.frame
        fillMode = .ResizeAspectFill
        alwaysRepeat = true
        sound = true
        startTime = 0.0
        duration = 20.0
        alpha = 0.7
        backgroundColor = UIColor.blackColor()
        
        contentURL = url
        view.userInteractionEnabled = false
    }
    
    private func setupButtons() {
        loginButton.backgroundColor = UIColor.whiteColor()
        loginButton.layer.cornerRadius = 5.0
        loginButton.layer.masksToBounds = true
        
        createNewButton.tintColor = UIColor.whiteColor()
        createNewButton.backgroundColor = view.tintColor
        createNewButton.layer.cornerRadius = 5.0
        createNewButton.layer.masksToBounds = true
        
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }

}

