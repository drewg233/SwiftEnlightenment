//
//  ViewController.swift
//  Project 8 - PlayLocalVideo
//
//  Created by Andrew Garcia on 3/22/16.
//  Copyright © 2016 Andrew Garcia. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var playButton: UIButton!
    
    var playViewController = AVPlayerViewController()
    var playView = AVPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        playButton.layer.cornerRadius = 10
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func playButtonAction(sender: AnyObject) {
        let videoPath = NSBundle.mainBundle().pathForResource("sampleVideo2", ofType: "mp4")
        let fileURL = NSURL(fileURLWithPath: videoPath!)
    
        playView = AVPlayer(URL: fileURL)
    
        playViewController.player = playView
    
        self.presentViewController(playViewController, animated: true) {
            self.playViewController.player?.play()
        }
    }
    
    
    

    

}

