//
//  BaselineViewController.swift
//  Anchors
//
//  Created by Jonathan Rasmusson (Contractor) on 2019-06-25.
//  Copyright © 2019 Jonathan Rasmusson. All rights reserved.
//

import UIKit

class BaseLineViewController: UIViewController {

    let companyLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Company"
        label.font = UIFont.systemFont(ofSize: 16)
        label.backgroundColor = .yellow

        return label
    }()

    let companyTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Enter Company Name"
        textField.font = UIFont.systemFont(ofSize: 30)

        return textField
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupNavigationItems()
        setupViews()
    }

    func setupNavigationItems() {
        navigationItem.title = "Baseline"
    }

    func setupViews() {

        view.addSubview(companyLabel)
        view.addSubview(companyTextField)
        
        companyLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        companyLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -150).isActive = true

        // companyTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true // this will offset
        companyTextField.firstBaselineAnchor.constraint(equalTo: companyLabel.firstBaselineAnchor).isActive = true
        companyTextField.leadingAnchor.constraint(equalTo: companyLabel.trailingAnchor, constant: 8).isActive = true

    }
}
