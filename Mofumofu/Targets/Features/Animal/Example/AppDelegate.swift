import UIKit
import MofumofuUI
import AnimalFeature
import MofumofuKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    var coordinator: MainCoordinator?
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil
    ) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        
        let navigationController = UINavigationController()
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        
        coordinator = MainCoordinator(navigationController: navigationController)
        coordinator?.start()
        UITabBar.appearance().barTintColor = .gray
        UITabBar.appearance().tintColor = .black
        

        return true
    }

}

