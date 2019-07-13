//
//  BasicAnchor.swift
//  AnchorsLayoutGuides
//
//  Created by Jonathan Rasmusson Work Pro on 2019-07-13.
//  Copyright © 2019 Rasmusson Software Consulting. All rights reserved.
//

import UIKit

class BasicAnchors: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
    }
    
    func setupViews() {
        navigationItem.title = "Anchors"
        
        let upperLeftLabel = makeLabel(withText: "upperLeft")
        let upperRightLabel = makeLabel(withText: "upperRight")
        let lowerLeftLabel = makeSecondaryLabel(withText: "lowerLeft")
        let button = makeButton(withText: "Pay Bill")
        
        view.addSubview(upperLeftLabel)
        view.addSubview(upperRightLabel)
        view.addSubview(lowerLeftLabel)
        view.addSubview(button)
        
        upperLeftLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        upperLeftLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
        
        upperRightLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true  // don't use `leftAnchor`
        upperRightLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8).isActive = true  // negative sign
        
        lowerLeftLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -8).isActive = true
        lowerLeftLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
        
        button.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -8).isActive = true
        button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8).isActive = true        
    }
    
    func makeLabel(withText text: String) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false // important!
        label.backgroundColor = .yellow
        label.textAlignment = .center
        label.text = text
        
        return label
    }
    
    func makeSecondaryLabel(withText text: String) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false // important!
        label.backgroundColor = .yellow
        label.textAlignment = .center
        label.text = text
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = .gray
        
        return label
    }
    
    func makeButton(withText text: String) -> UIButton {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(text, for: .normal)
        button.backgroundColor = .blue
        
        return button
    }

}
