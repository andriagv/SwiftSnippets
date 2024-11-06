//
//  SceneDelegate.swift
//  TabBarController
//
//  Created by Andria Gvaramia on 06.11.24.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let scene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: scene)
        
        let VC = TabBarController()
        let navVC = UINavigationController(rootViewController: VC)
        window?.rootViewController = navVC
        window?.makeKeyAndVisible()
    }
}
