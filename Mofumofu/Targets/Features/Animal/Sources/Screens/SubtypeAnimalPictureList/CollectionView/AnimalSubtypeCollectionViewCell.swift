//
//  AnimalSubtypeCollectionViewCell.swift
//  Mofumofu
//
//  Created by saminos on 21/01/24.
//  Copyright © 2024 amin.id. All rights reserved.
//

import UIKit

class AnimalSubtypeCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func `set`(label: String) {
        self.label.text = label
    }
    
    func `set`(image: UIImage) {
        self.imageView.image = image
    }

}
