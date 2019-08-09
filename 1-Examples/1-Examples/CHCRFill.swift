//
//  CHCRFill.swift
//  1-Examples
//
//  Created by Jonathan Rasmusson Work Pro on 2019-08-09.
//  Copyright © 2019 Jonathan Rasmusson. All rights reserved.
//

import UIKit

class CHCRFill: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    func setupViews() {
        navigationItem.title = "CHCR Fill"
        
        let stackView = makeStackView(withOrientation: .vertical)
        stackView.distribution = .fill
        
        let bigLabel = makeLabel(withText: "Big", size: 128, color: .darkYellow)
        let medLabel = makeLabel(withText: "Med", size: 64, color: .darkOrange)
        let smlLabel = makeLabel(withText: "Sml", size: 32, color: .darkGreen)
        
        stackView.addArrangedSubview(medLabel)
        stackView.addArrangedSubview(bigLabel) // stuck here for demo purposes...
        stackView.addArrangedSubview(smlLabel)
        
        view.addSubview(stackView)
        
        // It's when the stackView is pinned, that the height becomes ambiguous.
        stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true

        // .fill will randomly strech one of the views fill the empty space
        
        // But we can control which one it is by choosing which label
        // we would like to stretch.
        bigLabel.setContentHuggingPriority(UILayoutPriority(rawValue: 48), for: .vertical)
    }
    
}



