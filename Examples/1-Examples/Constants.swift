//
//  Constants.swift
//  1-Examples
//
//  Created by Jonathan Rasmusson (Contractor) on 2019-08-22.
//  Copyright © 2019 Jonathan Rasmusson. All rights reserved.
//

import UIKit

class Constants: UIViewController {

    var topAnchorConstraint = NSLayoutConstraint()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }

    func setupViews() {
        let label = makeLabel(withText: "Watch me!", size: 32)
        let button = makeButton(withText: "Up/Down")

        view.addSubview(label)
        view.addSubview(button)

        // constraint we are going to alter
        topAnchorConstraint = label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 80)
        topAnchorConstraint.isActive = true

        // static constraints that aren't going to change
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true

        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true

        button.addTarget(self, action: #selector(buttonPressed), for: .primaryActionTriggered)
    }

    @objc func buttonPressed(sender: UIButton!) {
        if topAnchorConstraint.constant == 80 {
            topAnchorConstraint.constant = 80 * 2
        } else {
            topAnchorConstraint.constant = 80
        }
    }

}
