//
//  CustomTableViewCell.swift
//  Project 17 - CustomTableView
//
//  Created by Andrew Garcia on 3/27/16.
//  Copyright © 2016 Andrew Garcia. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var contactImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        contactImage.layer.cornerRadius = contactImage.frame.width / 2
        contactImage.clipsToBounds = true
    }
    
    func configureCell(contact: Dictionary<String, String>) {
        self.nameLabel.text = contact["name"]
        self.contactImage.image = UIImage(named: contact["contactImageName"]!)
    }
}
