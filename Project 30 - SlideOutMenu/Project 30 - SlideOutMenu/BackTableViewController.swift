//
//  BackTableViewController.swift
//  Project 30 - SlideOutMenu
//
//  Created by Andrew Garcia on 4/12/16.
//  Copyright © 2016 Andrew Garcia. All rights reserved.
//

import UIKit

class BackTableViewController: UITableViewController {
    
    var tableArray = [String]()

    override func viewDidLoad() {
        tableArray = ["First", "Second"]
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableArray.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(tableArray[indexPath.row], forIndexPath: indexPath) as UITableViewCell
        
        cell.textLabel?.text = tableArray[indexPath.row]
        return cell
    }
    


}
