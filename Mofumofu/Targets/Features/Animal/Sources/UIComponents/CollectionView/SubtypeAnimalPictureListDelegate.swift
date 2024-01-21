//
//  SubtypeAnimalPictureListDelegate.swift
//  Mofumofu
//
//  Created by saminos on 21/01/24.
//  Copyright © 2024 amin.id. All rights reserved.
//

import UIKit

class SubtypeAnimalPictureListDelegate: NSObject, UICollectionViewDelegate {
    weak var dataSource: SubtypeAnimalPictureListDataSource?
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        dataSource?.updateLovedAnimal(index: indexPath.row)
        collectionView.reloadItems(at: [indexPath])
    }
}
