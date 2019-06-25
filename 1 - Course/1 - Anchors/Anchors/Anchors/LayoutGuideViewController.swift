//
//  LayoutGuideViewController.swift
//  Anchors
//
//  Created by Jonathan Rasmusson (Contractor) on 2019-06-25.
//  Copyright © 2019 Jonathan Rasmusson. All rights reserved.
//

import UIKit

class LayoutGuideViewController: UIViewController {

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

        upperLeftLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        upperLeftLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 0).isActive = true

        upperRightLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        upperRightLabel.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: 0).isActive = true

        lowerLeftLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0).isActive = true
        lowerLeftLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 0).isActive = true

        lowerRightLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0).isActive = true
        lowerRightLabel.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: 0).isActive = true
    }

    func setupNavigationItems() {
        navigationItem.title = "LayoutGuides"
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Baselines", style: .plain, target: self, action: #selector(handleBaselines))
    }

    // MARK: - Actions
    @objc func handleBaselines() {
        navigationController?.pushViewController(BaseLineViewController(), animated: false)
    }

}
