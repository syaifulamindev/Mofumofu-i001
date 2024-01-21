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
    
    func updateLovedAnimal(index: Int) {
        guard index >= 0 && index < data.count else { return }
        var animal = data[index]
        animal.loved = !animal.loved
        data[index] = animal
    }
    
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
        cell?.indexPath = indexPath
        cell?.set(label: animal.name)
        cell?.updateLovedAnimal =  { [weak self] indexPath in
            self?.updateLovedAnimal(index: indexPath.row)
            collectionView.reloadItems(at: [indexPath])
        }
        
        let loveImageName: String = animal.loved ? "heart.fill" : "heart"
        let configurations = UIImage.SymbolConfiguration(scale: .large)
        cell?.loveButton.setImage(UIImage(systemName: loveImageName, withConfiguration: configurations), for: .normal)
        
        return cell ?? .init()
    }
    
    
}
