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

    let filterButton = UIButton(type: .system)
    weak var coordinator: MainCoordinator?
    override func viewDidLoad() {
        super.viewDidLoad()

        filterButton.setImage(UIImage(systemName: "line.3.horizontal.decrease.circle", withConfiguration: nil), for: .normal)
        filterButton.addTarget(self, action: #selector(filter), for: .touchUpInside)
        filterButton.tintColor = .black
        
        let label: UILabel = .init()
        label.text = "Favorite List Screen"
        label.sizeToFit()
        label.center.x = view.center.x
        label.center.y = view.center.y
        view.addSubview(label)
        view.addSubview(filterButton)
        
        filterButton.snp.makeConstraints { make in
            make.left.equalTo(view.snp.left).inset(8)
            make.top.equalTo(view.safeAreaLayoutGuide).inset(8)
        }
    }
    
    @objc
    func filter() {
        coordinator?.filter(onFilter)
    }
    
    func onFilter(_ filterItems: [String]) -> Void {
        
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
