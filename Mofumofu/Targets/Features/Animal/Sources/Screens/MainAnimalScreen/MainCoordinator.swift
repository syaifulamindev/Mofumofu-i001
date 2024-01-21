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
import Moya

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
                favoriteListVC()
            ],
            animated: true
        )
        navigationController.pushViewController(vc, animated: false)
    }
    
    private func animalListVC() -> UIViewController {
        let vc = AnimalListViewController()
        vc.coordinator = self
        vc.delegate.coordinator = self
        return vc
    }
    
    private func favoriteListVC() -> UIViewController {
        let vc = FavoriteListViewController()
        vc.coordinator = self
        return vc
    }
    
    func subtypeAnimalPictures(_ animalName: String) {
        let vc = SubtypeAnimalPictureListViewController()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
        _Concurrency.Task {
            let data: Animals = try await networkProvider.request(AnimalAPI.animalList(name: animalName),
                                                                            provider: MoyaProvider<AnimalAPI>.stubProvider())
            await MainActor.run {
                
                //FIXME: this filter is temporary, because we can't get real data from server right now
                vc.dataSource.data = data.filter {
                    $0.name.lowercased().contains(animalName.lowercased())
                }
                DispatchQueue.main.async {
                    vc.collectionView.reloadData()
                }
            }
            print("data: \(data)")
        }
        
    }
    
    func filter(_ onFilter: @escaping ([String]) -> Void) {
        let vc = FilterViewTableViewController()
        vc.onFilter = onFilter
        navigationController.pushViewController(vc, animated: true)
    }
    
    
}
