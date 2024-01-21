//
//  UICollectionViewCell + Extensions.swift
//  MofumofuUI
//
//  Created by saminos on 21/01/24.
//  Copyright © 2024 amin.id. All rights reserved.
//

import UIKit
public extension UICollectionViewCell {
    static var className: String {
        String(description().split(separator: ".").last ?? "")
    }
    
    static func register(_ collectionView: UICollectionView, bundle: Bundle) {
        collectionView.register(UINib(nibName: className, bundle: bundle), forCellWithReuseIdentifier: className)
    }
}
