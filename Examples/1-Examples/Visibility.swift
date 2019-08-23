//
//  Visibility.swift
//  1-Examples
//
//  Created by Jonathan Rasmusson (Contractor) on 2019-08-22.
//  Copyright © 2019 Jonathan Rasmusson. All rights reserved.
//

import UIKit

class Visibility: UIViewController {

    let label2 = makeLabel(withText: "Now you don't", size: 32, color: .red)

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }

    func setupViews() {
        let stackView = makeStackView(withOrientation: .vertical)
        stackView.distribution = .fillProportionally

        let label1 = makeLabel(withText: "Now you see me", size: 32)
        let button = makeButton(withText: "Show/Hide", size: 32)

        stackView.addArrangedSubview(label1)
        stackView.addArrangedSubview(label2)
        stackView.addArrangedSubview(button)

        view.addSubview(stackView)

        stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true

        button.addTarget(self, action: #selector(buttonPressed), for: .primaryActionTriggered)
    }

    @objc func buttonPressed(sender: UIButton!) {
        label2.isHidden = !label2.isHidden
    }

}


