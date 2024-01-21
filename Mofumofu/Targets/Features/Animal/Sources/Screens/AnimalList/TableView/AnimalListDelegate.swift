//
//  AnimalListDelegate.swift
//  AnimalFeature
//
//  Created by saminos on 21/01/24.
//  Copyright © 2024 amin.id. All rights reserved.
//

import UIKit

class AnimalListDelegate: NSObject, UITableViewDelegate {
    weak var coordinator: MainCoordinator?
    weak var dataSource: AnimalListDatasource?
    var data: [String] {
        dataSource?.data ?? []
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard data.count > indexPath.row else {
            NSLog("\(Self.description()) | didSelectRowAt | data.count less than indexPath.row")
            return
        }
        coordinator?.subtypeAnimalPictures(data[indexPath.row])
    }
}
