//
//
//
//  Created by Andria Gvaramia on 06.11.24.
//

import UIKit

class scrollView: UIViewController {
    
    let scrollView = UIScrollView()
    let newView = UIView()
    let stackView = UIStackView()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        newView.backgroundColor = .red
        scrollView.backgroundColor = .green
        newView.backgroundColor = .purple
        
        view.addSubview(scrollView)
        scrollView.addSubview(newView)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        newView.translatesAutoresizingMaskIntoConstraints = false
      
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.leftAnchor.constraint(equalTo: view.leftAnchor),
            scrollView.rightAnchor.constraint(equalTo: view.rightAnchor),
            scrollView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5),
   
            newView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            newView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            newView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            newView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            newView.widthAnchor.constraint(equalTo: scrollView.widthAnchor)
        ])
        setupStackView()
    }
    
    func setupStackView() {
        newView.addSubview(stackView)
        stackView.axis = .vertical
        stackView.spacing = 20
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.topAnchor.constraint(equalTo: newView.topAnchor).isActive = true
        stackView.leftAnchor.constraint(equalTo: newView.leftAnchor).isActive = true
        stackView.rightAnchor.constraint(equalTo: newView.rightAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: newView.bottomAnchor).isActive = true
        
        makeLable()
    }
    
    func makeLable() {
        for i in 1...50 {
            let lable = UILabel()
            lable.text = "teqsti \(i)"
            stackView.addArrangedSubview(lable)
        }
    }
}
