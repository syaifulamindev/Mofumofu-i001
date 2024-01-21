//
//  SubtypeAnimalPictureListDataSource.swift
//  Mofumofu
//
//  Created by saminos on 21/01/24.
//  Copyright © 2024 amin.id. All rights reserved.
//

import UIKit

class SubtypeAnimalPictureListDataSource: NSObject, UICollectionViewDataSource {
    var data: Animals = []
    
    func setup(_ collectionView: UICollectionView) {
        collectionView.dataSource = self
        AnimalSubtypeCollectionViewCell.register(collectionView, bundle: .module)
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        AnimalSubtypeCollectionViewCell.register(collectionView, bundle: .module)
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: AnimalSubtypeCollectionViewCell.className, for: indexPath) as? AnimalSubtypeCollectionViewCell
        let animal = data[indexPath.row]
        cell?.set(label: animal.name)
        
        return cell ?? .init()
    }
    
}
