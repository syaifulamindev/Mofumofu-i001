//
//  FavoriteListViewController.swift
//  AnimalFeature
//
//  Created by saminos on 21/01/24.
//  Copyright © 2024 amin.id. All rights reserved.
//

import UIKit
import MofumofuKit

class FavoriteListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        let label: UILabel = .init()
        label.text = "Favorite List Screen"
        label.sizeToFit()
        label.center.x = view.center.x
        label.center.y = view.center.y
        view.addSubview(label)
    }
    
    init() {
        super.init(nibName: nil, bundle: nil)
        view.backgroundColor = .white
        tabBarItem.title = "Favorite List"
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    

}
