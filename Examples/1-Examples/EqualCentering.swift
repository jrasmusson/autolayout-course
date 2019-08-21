//
//  EqualCentering.swift
//  1-Examples
//
//  Created by Jonathan Rasmusson Work Pro on 2019-08-09.
//  Copyright © 2019 Jonathan Rasmusson. All rights reserved.
//

import UIKit

class EqualCentering: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    func setupViews() {
        navigationItem.title = "Fill"
        
        let stackView = makeStackView(withOrientation: .vertical)
        stackView.distribution = .equalCentering
        
        stackView.addArrangedSubview(makeLabel(withText: "Big", size: 128, color: .darkYellow))
        stackView.addArrangedSubview(makeLabel(withText: "Med", size: 64, color: .darkOrange))
        stackView.addArrangedSubview(makeLabel(withText: "Sml", size: 32, color: .darkGreen))
        
        view.addSubview(stackView)
        
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
}


