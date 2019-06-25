//
//  ViewController.swift
//  Anchors
//
//  Created by Jonathan Rasmusson (Contractor) on 2019-06-24.
//  Copyright © 2019 Jonathan Rasmusson. All rights reserved.
//

import UIKit

class AnchorsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupNavigationItems()
        setupViews()
    }

    func setupViews() {
        let upperLeftLabel = makeLabel(withText: "upperLeft")
        let upperRightLabel = makeLabel(withText: "upperRight")
        let lowerLeftLabel = makeLabel(withText: "lowerLeft")
        let lowerRightLabel = makeLabel(withText: "lowerRight")

        view.addSubview(upperLeftLabel)
        view.addSubview(upperRightLabel)
        view.addSubview(lowerLeftLabel)
        view.addSubview(lowerRightLabel)

        upperLeftLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        upperLeftLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true

        upperRightLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true            // don't use `leftAnchor`
        upperRightLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8).isActive = true   // negative sign

        lowerLeftLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40).isActive = true
        lowerLeftLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true

        lowerRightLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40).isActive = true
        lowerRightLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8).isActive = true
    }

    func setupNavigationItems() {
        navigationItem.title = "Anchors"
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "SafeAreas", style: .plain, target: self, action: #selector(handleSafeAreas))
    }

    // MARK: - Actions
    @objc func handleSafeAreas() {
        navigationController?.pushViewController(SafeAreaViewController(), animated: false)
    }

}

extension UIViewController {

    func makeLabel(withText text: String) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false // important!
        label.backgroundColor = .yellow
        label.text = text

        return label
    }
    
}
