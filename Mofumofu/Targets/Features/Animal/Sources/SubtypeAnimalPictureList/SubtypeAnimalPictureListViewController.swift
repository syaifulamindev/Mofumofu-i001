//
//  SubtypeAnimalPictureListViewController.swift
//  Mofumofu
//
//  Created by saminos on 21/01/24.
//  Copyright © 2024 amin.id. All rights reserved.
//

import UIKit
import MofumofuKit

class SubtypeAnimalPictureListViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let label: UILabel = .init()
        label.text = "Subtype Animal Picture List Screen"
        label.sizeToFit()
        label.center.x = view.center.x
        label.center.y = view.center.y
        view.addSubview(label)
    }
    
    init() {
        super.init(nibName: nil, bundle: nil)
        view.backgroundColor = .white
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
}
