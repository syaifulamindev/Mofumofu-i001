import UIKit
import MofumofuUI
import AnimalFeature

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil
    ) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let viewController = MainAnimalViewController()
        
        window?.rootViewController = viewController
        window?.makeKeyAndVisible()
        
        UITabBar.appearance().barTintColor = .gray
        UITabBar.appearance().tintColor = .black
        

        return true
    }

}

