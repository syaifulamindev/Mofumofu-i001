//
//  MainAnimalViewController.swift
//  Mofumofu
//
//  Created by saminos on 21/01/24.
//  Copyright © 2024 amin.id. All rights reserved.
//

import Foundation
import UIKit
import MofumofuKit

public class MainAnimalViewController: UITabBarController {
    
    @Injected(\.animalList)
    var animalListViewController: UIViewController
    var animalFavoriteViewController: UIViewController = .init()
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setViewControllers(
            [
                animalListViewController,
                animalFavoriteViewController
            ],
            animated: true
        )
    }
}
