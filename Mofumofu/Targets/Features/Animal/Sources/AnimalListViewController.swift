//
//  AnimalListViewController.swift
//  Mofumofu
//
//  Created by saminos on 21/01/24.
//  Copyright © 2024 amin.id. All rights reserved.
//

import Foundation
import UIKit
import MofumofuKit

class AnimalListViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        tabBarItem.title = "AnimalList"
        
    }
}

extension InjectedValues {
    var animalList: UIViewController {
        get { Self[AnimalListKey.self] }
        set { Self[AnimalListKey.self] = newValue }
    }
}
 
struct AnimalListKey: InjectionKey {
    static var currentValue: UIViewController = AnimalListViewController()
}
