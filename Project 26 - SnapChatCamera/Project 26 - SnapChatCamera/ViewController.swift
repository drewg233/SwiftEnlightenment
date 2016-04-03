//
//  ViewController.swift
//  Project 26 - SnapChatCamera
//
//  Created by Andrew Garcia on 4/3/16.
//  Copyright © 2016 Andrew Garcia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        setUpMenu()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setUpMenu() {
        let v1 : View1 = View1(nibName: "View1", bundle: nil)
        let v2 : View2 = View2(nibName: "View2", bundle: nil)
        
        self.addChildViewController(v1)
        self.scrollView.addSubview(v1.view)
        v1.didMoveToParentViewController(self)
        
        self.addChildViewController(v2)
        self.scrollView.addSubview(v2.view)
        v2.didMoveToParentViewController(self)
        
        var v2Frame : CGRect = v2.view.frame
        v2Frame.origin.x = self.view.frame.width
        v2.view.frame = v2Frame
        
        self.scrollView.contentSize = CGSizeMake(self.view.frame.width * 2, self.view.frame.height)
    }


}

