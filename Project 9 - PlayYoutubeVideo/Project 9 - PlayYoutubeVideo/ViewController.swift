//
//  ViewController.swift
//  Project 9 - PlayYoutubeVideo
//
//  Created by Andrew Garcia on 3/22/16.
//  Copyright © 2016 Andrew Garcia. All rights reserved.
//

import UIKit
import YoutubeSourceParserKit
import MediaPlayer

class ViewController: UIViewController {
    
    @IBOutlet weak var videoView: UIView!
    
    var actualVideoURL: String = ""
    let moviePlayer = MPMoviePlayerController()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setUpVideo()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setUpVideo() {
        moviePlayer.view.frame = CGRect(x: 0, y: 0, width: self.videoView.frame.width, height: self.videoView.frame.size.height)
        videoView.addSubview(moviePlayer.view)
        moviePlayer.fullscreen = false
        moviePlayer.prepareToPlay()
        let youtubeURL = NSURL(string: "https://www.youtube.com/watch?v=6v2L2UGZJAM")!
        playVideoWithYoutubeURL(youtubeURL)
    }
    
    func playVideoWithYoutubeURL(url: NSURL) {
        Youtube.h264videosWithYoutubeURL(url, completion: { (videoInfo, error) -> Void in
            if let
                videoURLString = videoInfo?["url"] as? String {
                self.moviePlayer.contentURL = NSURL(string: videoURLString)
            }
        })
    }

}

