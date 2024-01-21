//
//  MainCoordinator.swift
//  AnimalFeature
//
//  Created by saminos on 21/01/24.
//  Copyright © 2024 amin.id. All rights reserved.
//

import UIKit
import MofumofuUI
import MofumofuKit

public class MainCoordinator: Coordinator {
    public var childCoordinators = [Coordinator]()
    public var navigationController: UINavigationController
    @Injected(\.networkProvider)
    public var networkProvider: NetworkProviding
    
    public init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    public func start() {
        let vc = MainAnimalViewController()
        vc.setViewControllers(
            [
                animalListVC(),
                FavoriteListViewController()
            ],
            animated: true
        )
        navigationController.pushViewController(vc, animated: false)
    }
    
    private func animalListVC() -> UIViewController {
        let vc = AnimalListViewController()
        vc.delegate.coordinator = self
        return vc
        
    }
    
    func subtypeAnimalPictures(_ animalName: String) {
        let vc = SubtypeAnimalPictureListViewController()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
        
        Task {
            let animalSubtypes: Animals = try await networkProvider.request(AnimalAPI.animalList(name: animalName))
            print(animalSubtypes)
        }
        
    }
    
    
}
