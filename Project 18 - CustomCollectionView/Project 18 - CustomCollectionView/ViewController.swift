//
//  ViewController.swift
//  Project 18 - CustomCollectionView
//
//  Created by Andrew Garcia on 3/28/16.
//  Copyright © 2016 Andrew Garcia. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var movies = ["insideout",
                  "batman",
                  "hobbit",
                  "guardians",
                  "ted",
                  "harrypotterprisoner",
                  "harrypotterhallows",
                  "insideout",
                  "batman",
                  "hobbit",
                  "guardians",
                  "ted",
                  "harrypotterprisoner",
                  "harrypotterhallows"]
    
    private let leftAndRightPaddings: CGFloat =  8.0
    private let numberOfItemsPerRow: CGFloat =  3.0
    private let heightAdjustment: CGFloat =  70.0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.alwaysBounceVertical = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // CollectionView Required Methods
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movies.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCellWithReuseIdentifier("customCell", forIndexPath: indexPath) as? CustomCollectionViewCell {
            
            cell.configureCell(movies[indexPath.row])
            
            return cell
        } else {
            return UICollectionViewCell()
        }
    }
    
    // Custom Sizing
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        let width = (CGRectGetWidth(collectionView.frame) - leftAndRightPaddings) / numberOfItemsPerRow
        return CGSizeMake(width, width + heightAdjustment)
    }


}

