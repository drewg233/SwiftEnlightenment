//
//  CustomCollectionViewCell.swift
//  Project 18 - CustomCollectionView
//
//  Created by Andrew Garcia on 3/28/16.
//  Copyright © 2016 Andrew Garcia. All rights reserved.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var movieImage: UIImageView!
    
    override func awakeFromNib() {
        movieImage.layer.cornerRadius = 3
    }
    
    func configureCell(movie: String) {
        self.movieImage.image = UIImage(named: movie)
    }
}
