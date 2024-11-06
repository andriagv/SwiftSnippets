//
//  newVC.swift
//  varjish
//
//  Created by Apple on 06.11.24.
//

import UIKit

class newVC: UIViewController {
    
    let newView: UIView = {
       let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.heightAnchor.constraint(equalToConstant: 100).isActive = true
        view.widthAnchor.constraint(equalToConstant: 100).isActive = true
        view.backgroundColor = .orange
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .green
        setup()
      
    }
    
    
    func setup() {
        view.addSubview(newView)
        newView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        newView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    

    

}
