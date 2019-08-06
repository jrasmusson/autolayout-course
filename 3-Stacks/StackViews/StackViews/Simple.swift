//
//  Simple.swift
//  StackViews
//
//  Created by Jonathan Rasmusson (Contractor) on 2019-08-06.
//  Copyright © 2019 Jonathan Rasmusson. All rights reserved.
//

import UIKit

class Simple: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }

    func setupViews() {

        let emailTextField = makeTextField(withPlaceholderText: "email address")
        let passwordTextField = makeTextField(withPlaceholderText: "password")
        let loginButton = makeButton(withText: "Login")

        let stackView = makeStackView(withOrientation: .vertical)
        stackView.addArrangedSubview(emailTextField)
        stackView.addArrangedSubview(passwordTextField)
        stackView.addArrangedSubview(loginButton)

        view.addSubview(stackView)

        // just going to center in view - remember stackViews by themselves have no size - they get it from their contents
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }

}
