//
//  ViewController.swift
//  Project 14 - PullToRefresh
//
//  Created by Andrew Garcia on 3/24/16.
//  Copyright © 2016 Andrew Garcia. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    let favoriteAnimals = ["Cats", "Dogs", "Birds"]
    let newFavoriteAnimals = ["Elephants", "Giraffes", "Dinosaurs"]
    var tableData = [String]()
    let refreshControl = UIRefreshControl()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableData = favoriteAnimals
        
        tableView.dataSource = self
        tableView.delegate = self
        
        self.refreshControl.attributedTitle = NSAttributedString(string: "Pull to refresh")
        refreshControl.backgroundColor = UIColor.redColor()
        refreshControl.tintColor = UIColor.yellowColor()
        refreshControl.addTarget(self, action: #selector(ViewController.refreshList), forControlEvents: UIControlEvents.ValueChanged)
        self.tableView?.addSubview(refreshControl)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func refreshList() {
        print("Refreshing isn't it?")
        
        tableData = newFavoriteAnimals
        tableView.reloadData()
        refreshControl.endRefreshing()
    }
    
    
    // UITableViews Required Methods
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = tableData[indexPath.row]
        return cell
    }
}

