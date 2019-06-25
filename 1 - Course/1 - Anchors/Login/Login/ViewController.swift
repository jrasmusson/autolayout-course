//
//  ViewController.swift
//  Login
//
//  Created by Jonathan Rasmusson (Contractor) on 2019-06-25.
//  Copyright © 2019 Jonathan Rasmusson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupViews()
    }

    func setupViews() {
        let usernameTextField = makeTextField(withText: "Enter username")
        let passwordTextField = makeTextField(withText: "Enter password")
        let loginButton = makeButton(withText: "Login")

        view.addSubview(usernameTextField)
        view.addSubview(passwordTextField)
        view.addSubview(loginButton)

        usernameTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 80).isActive = true
        usernameTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true

        passwordTextField.topAnchor.constraint(equalTo: usernameTextField.bottomAnchor, constant: 8).isActive = true
        passwordTextField.centerXAnchor.constraint(equalTo: usernameTextField.centerXAnchor).isActive = true

        loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 8).isActive = true
        loginButton.centerXAnchor.constraint(equalTo: usernameTextField.centerXAnchor).isActive = true

        usernameTextField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.33).isActive = true
        passwordTextField.widthAnchor.constraint(equalTo: usernameTextField.widthAnchor, multiplier: 1).isActive = true
        loginButton.widthAnchor.constraint(equalTo: usernameTextField.widthAnchor, multiplier: 1).isActive = true
    }

    // MARK: - Factory methods

    func makeTextField(withText text: String) -> UITextField {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = text
        textField.backgroundColor = .green

        return textField
    }

    func makeButton(withText text: String) -> UIButton {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(text, for: .normal)
        button.backgroundColor = .red

        return button
    }

}

