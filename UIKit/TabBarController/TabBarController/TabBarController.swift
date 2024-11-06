//
//  TabBarController.swift
//
//  Created by Andria Gvaramia on 06.11.24.
//

import UIKit

class TabBarController: UITabBarController {
    
    let titleLabel1: UILabel = {
        let titleLabel = UILabel()
        titleLabel.textColor = .black
        titleLabel.text = "la1"
        titleLabel.font = UIFont(name: "Georgia-Bold", size: 20)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        return titleLabel
    }()
    
    let titleLabel2: UILabel = {
        let titleLabel = UILabel()
        titleLabel.textColor = .black
        titleLabel.text = "Label2"
        titleLabel.font = UIFont(name: "Georgia-Bold", size: 20)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        return titleLabel
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTabs()
        updateTitleLabel()
        self.delegate = self
    }

    private func configureTabs() {
        let vc1 = newVC()
        let vc2 = FirstVC()
        
        vc1.tabBarItem.image = UIImage(systemName: "bookmark")
        vc2.tabBarItem.image = UIImage(systemName: "bookmark")
        
        setViewControllers([vc1, vc2], animated: true)
        
        self.tabBar.isTranslucent = false
    }
    
    private func updateTitleLabel() {
        if selectedViewController is newVC {
            self.navigationItem.titleView = titleLabel1
        } else {
            self.navigationItem.titleView = titleLabel2
        }
    }
}


//ეს  გვეხმარება, რომ მას შემდეგ, რაც ტაბი შეიცვლება, განაახლოთ შესაბამისი ეკრანი ან შეიცვალოთ მასზე გამოსახული ინფორმაცია.
extension TabBarController: UITabBarControllerDelegate {
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        updateTitleLabel()
    }
    
}
