//
//  Constraints.swift
//  1-Examples
//
//  Created by Jonathan Rasmusson (Contractor) on 2019-08-22.
//  Copyright © 2019 Jonathan Rasmusson. All rights reserved.
//

import UIKit

class Constraints: UIViewController {

    var leadingAnchorConstraint = NSLayoutConstraint()
    var trailingAnchorConstraint = NSLayoutConstraint()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }

    func setupViews() {
        let label = makeLabel(withText: "Watch me!", size: 32)
        let button = makeButton(withText: "Left/Right")

        view.addSubview(label)
        view.addSubview(button)

        // constraints we are going to alter
        leadingAnchorConstraint = label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 80)
        trailingAnchorConstraint = label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -80)

        // constraints we are going to leave the same
        label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 80).isActive = true

        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true

        // start by activating the leading constraint...
        leadingAnchorConstraint.isActive = true

        button.addTarget(self, action: #selector(buttonPressed), for: .primaryActionTriggered)
    }

    @objc func buttonPressed(sender: UIButton!) {
        if leadingAnchorConstraint.isActive {
            leadingAnchorConstraint.isActive = false
            trailingAnchorConstraint.isActive = true
        } else {
            leadingAnchorConstraint.isActive = true
            trailingAnchorConstraint.isActive = false
        }
    }

}

