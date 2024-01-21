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

class AnimalListViewController: UITableViewController {
    
    let dataSource = AnimalListDatasource()
    override func viewDidLoad() {
        super.viewDidLoad()
        dataSource.setup(self.tableView)
        tableView.reloadData()
    }
    
    init() {
        super.init(nibName: nil, bundle: nil)
        view.backgroundColor = .white
        tabBarItem.title = "Animal List"
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
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
