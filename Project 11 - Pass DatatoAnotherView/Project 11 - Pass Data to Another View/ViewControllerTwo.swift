//
//  ViewControllerTwo.swift
//  Project 11 - Pass Data to Another View
//
//  Created by Andrew Garcia on 3/23/16.
//  Copyright © 2016 Andrew Garcia. All rights reserved.
//

import Foundation
import UIKit

class ViewControllerTwo: UIViewController {

    @IBOutlet weak var dataLabel: UILabel!
    
    var dataLabelText = String()
    
    override func viewDidLoad() {
        dataLabel.text = dataLabelText
    }
    
}