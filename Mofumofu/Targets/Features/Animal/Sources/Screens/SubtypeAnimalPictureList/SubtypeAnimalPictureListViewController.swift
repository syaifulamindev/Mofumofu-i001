//
//  SubtypeAnimalPictureListViewController.swift
//  Mofumofu
//
//  Created by saminos on 21/01/24.
//  Copyright © 2024 amin.id. All rights reserved.
//

import UIKit
import MofumofuKit
import SnapKit

class SubtypeAnimalPictureListViewController: UIViewController {
    
    let dataSource: SubtypeAnimalPictureListDataSource = SubtypeAnimalPictureListDataSource()
    let delegate: SubtypeAnimalPictureListDelegate = SubtypeAnimalPictureListDelegate()
    
    weak var coordinator: MainCoordinator?
    let collectionView: AnimalPictureCollectionView
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    init() {
        
        collectionView = AnimalPictureCollectionView()
        dataSource.setup(collectionView)
        collectionView.delegate = delegate
        delegate.dataSource = dataSource
        super.init(nibName: nil, bundle: nil)
        view.backgroundColor = .white
        
        
        collectionView.frame = self.view.frame
        view.addSubview(collectionView)
        
        collectionView.snp.makeConstraints { make in
            make.left.equalTo(view.snp.left)
            make.right.equalTo(view.snp.right)
            make.top.equalTo(view.snp.top)
            make.bottom.equalTo(view.snp.bottom)
        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        collectionView.updateLayout(view.frame.size)
    }
    
    
}
