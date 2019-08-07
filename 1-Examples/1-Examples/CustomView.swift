//
//  CustomView.swift
//  1-Examples
//
//  Created by Jonathan Rasmusson Work Pro on 2019-07-13.
//  Copyright © 2019 Rasmusson Software Consulting. All rights reserved.
//

import UIKit

class CustomView: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }

    func setupViews() {

        // custom view
        let row1 = RowView()

        let stackView = makeStackView(withOrientation: .vertical)
        stackView.addArrangedSubview(row1)

        view.addSubview(stackView)

        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }

}
