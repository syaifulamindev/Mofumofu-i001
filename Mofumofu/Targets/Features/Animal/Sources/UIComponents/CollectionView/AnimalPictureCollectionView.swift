//
//  AnimalPictureCollectionView.swift
//  Mofumofu
//
//  Created by saminos on 21/01/24.
//  Copyright © 2024 amin.id. All rights reserved.
//

import UIKit

class AnimalPictureCollectionView: UICollectionView {
    
    init() {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0
        layout.sectionInset = UIEdgeInsets(top: 16, left: 8, bottom: 8, right: 8)
        super.init(frame: .zero, collectionViewLayout: layout)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func updateLayout(_ maxSize: CGSize) {
        guard let layout = collectionViewLayout as? UICollectionViewFlowLayout else {
            return
        }
        
        
        let spacing = 8
        
        var numberOfItem: Int = 2
        if  UIDevice.current.orientation == .portrait || UIDevice.current.orientation == .portraitUpsideDown {
            numberOfItem = 2
        } else if UIDevice.current.orientation == .landscapeLeft || UIDevice.current.orientation == .landscapeRight {
            numberOfItem = 3
        }
        let spacingLength = spacing*(numberOfItem+1)
        
        let newLength = (maxSize.width - CGFloat(spacingLength)) / CGFloat(numberOfItem)
        layout.itemSize = CGSize(width: newLength, height: newLength)
        
        layout.invalidateLayout()
    }
}
