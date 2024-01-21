//
//  UITableViewCell + Extensions.swift
//  MofumofuUI
//
//  Created by saminos on 21/01/24.
//  Copyright © 2024 amin.id. All rights reserved.
//

import UIKit

public extension UITableViewCell {
    static var className: String {
        description()
    }
    
    static func register(_ tableView: UITableView, bundle: Bundle) {
        tableView.register(UINib(nibName: className, bundle: bundle), forCellReuseIdentifier: className)
    }
}
