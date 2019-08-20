//
//  AdaptConstraintsView.swift
//  1-Examples
//
//  Created by Jonathan Rasmusson (Contractor) on 2019-08-20.
//  Copyright © 2019 Jonathan Rasmusson. All rights reserved.
//

import UIKit

///
/// This example demonstrates how a views layout can be adjusted at runtime based
/// on it's orientation.
///

class AdjustConstraintsView: UIViewController {

    var stackView: UIStackView
    let blueView = AdjustConstraintsBlueView()

    init() {
        stackView = makeStackView(withOrientation: .vertical)
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        registerForOrientationChanges()
        setupViews()
    }

    func registerForOrientationChanges() {
        NotificationCenter.default.addObserver(self, selector: #selector(AdjustConstraintsView.rotated), name: UIDevice.orientationDidChangeNotification, object: nil)
    }

    func setupViews() {
        navigationItem.title = "Adjust Constraints"

        let redView = RedView()

        stackView.addArrangedSubview(redView)
        stackView.addArrangedSubview(blueView)

        view.addSubview(stackView)

        redView.heightAnchor.constraint(equalTo: blueView.heightAnchor).isActive = true
        redView.widthAnchor.constraint(equalTo: blueView.widthAnchor).isActive = true

        stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }

    @objc func rotated() {
        blueView.adjustConstraints()
        
        if UIDevice.current.orientation.isLandscape {
            stackView.axis = .horizontal
        } else {
            stackView.axis = .vertical
        }
    }

    deinit {
        NotificationCenter.default.removeObserver(self)
    }
}


