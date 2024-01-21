//
//  AnimalListDatasource.swift
//  AnimalFeature
//
//  Created by saminos on 21/01/24.
//  Copyright © 2024 amin.id. All rights reserved.
//

import UIKit
import MofumofuUI
class AnimalListDatasource: NSObject, UITableViewDataSource {
    var data: [String] = [
        "Lion",
         "Fox",
         "Dog",
         "Shark",
         "Turtle",
         "Whale",
         "Penguin"
    ]
    
    enum CellIdentifiers: String {
        case animalListTableCell
    }
    
    func setup(_ tableView: UITableView) {
        AnimalListTableViewCell.register(tableView, bundle: .module)
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "animalListTableCell") as? AnimalListTableViewCell ?? .init()
        
        var cellContext = cell.defaultContentConfiguration()
        cellContext.text = data[indexPath.row]
        cell.contentConfiguration = cellContext

        return cell
    }
    
    
}
