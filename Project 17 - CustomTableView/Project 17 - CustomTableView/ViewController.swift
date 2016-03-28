//
//  ViewController.swift
//  Project 17 - CustomTableView
//
//  Created by Andrew Garcia on 3/27/16.
//  Copyright © 2016 Andrew Garcia. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var contacts = [["name":"Daniel Green", "contactImageName": "daniel"],
                    ["name":"Austin Smith", "contactImageName": "austin"],
                    ["name":"Chales Mulford", "contactImageName": "charles"],
                    ["name":"Joe Miller", "contactImageName": "joe"],
                    ["name":"Candice Nelson", "contactImageName": "candice"],
                    ["name":"Greg Johnson", "contactImageName": "greg"],
                    ["name":"Kobe Bryant", "contactImageName": "kobe"],
                    ["name":"Dexter Morgan", "contactImageName": "dexter"],
                    ["name":"Shawn Tok", "contactImageName": "shawn"],
                    ["name":"Angela Harvey", "contactImageName": "angela"],
                    ["name":"Mike Greer", "contactImageName": "mike"],
                    ["name":"Jenny Lilly", "contactImageName": "jenny"],
                    ["name":"Alexa Grant", "contactImageName": "alexa"],
                    ["name":"Chris Fabian", "contactImageName": "chris"],
                    ["name":"Daniel Green", "contactImageName": "daniel"]]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.dataSource = self
        tableView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // TableView Required Methods
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCellWithIdentifier("customCell") as? CustomTableViewCell {
            cell.configureCell(contacts[indexPath.row])
            
            return cell
        } else {
            return UITableViewCell()
        }
    }


}

