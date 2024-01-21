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
    
    var dataSource: AnimalListDatasource = AnimalListDatasource()
    var delegate = AnimalListDelegate()
    
    weak var coordinator: MainCoordinator?
    override func viewDidLoad() {
        super.viewDidLoad()
        dataSource.setup(tableView)
        tableView.delegate = delegate
    }
    
    init() {
        super.init(nibName: nil, bundle: nil)
        delegate.dataSource = dataSource
        
        view.backgroundColor = .white
        tabBarItem.title = "Animal List"
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
}
