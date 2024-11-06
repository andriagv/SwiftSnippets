//
//  FirstVC.swift
//  varjish
//
//  Created by Apple on 06.11.24.
//

import UIKit

class FirstVC: UIViewController {

    let newView: UIView = {
       let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.heightAnchor.constraint(equalToConstant: 100).isActive = true
        view.widthAnchor.constraint(equalToConstant: 100).isActive = true
        view.backgroundColor = .orange
        return view
    }()
    
    let button: UIButton = {
        let b = UIButton()
        b.translatesAutoresizingMaskIntoConstraints = false
        b.backgroundColor = .blue
        b.setTitle("asdaw", for: .normal)
        b.tintColor = .systemGray
        b.layer.cornerRadius = 13
        b.heightAnchor.constraint(equalToConstant: 50).isActive = true
        b.widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        return b
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        //view.backgroundColor = .green
        setup()
      
    }
    
    
    func setup() {
        view.addSubview(newView)
        newView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        newView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        newView.addSubview(button)
        button.centerXAnchor.constraint(equalTo: newView.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: newView.centerYAnchor).isActive = true
        
        action()
    }
    
    func action() {
        button.addAction(UIAction(handler: { [weak self]  action in
            self?.navigate()
        }), for: .touchUpInside)
    }
    func navigate() {
        let vc = newVC()
        print("ok")
        navigationController?.pushViewController(vc, animated: true)
    }

}
