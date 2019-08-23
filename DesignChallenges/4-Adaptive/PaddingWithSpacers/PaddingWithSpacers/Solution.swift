//
//  Solution.swift
//  PaddingWithSpacers
//
//  Created by Jonathan Rasmusson (Contractor) on 2019-08-21.
//  Copyright © 2019 Jonathan Rasmusson. All rights reserved.
//

import UIKit

class Solution: UIViewController {

    var stackView: UIStackView
    var playerView: PlayerView

    var bottomAnchorConstraint = NSLayoutConstraint()

    init() {
        stackView = makeStackView(withOrientation: .vertical)
        playerView = PlayerView()

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
        NotificationCenter.default.addObserver(self, selector: #selector(Solution.rotated), name: UIDevice.orientationDidChangeNotification, object: nil)
    }

    func setupViews() {
        stackView.addArrangedSubview(makeAlbumImageView())
        stackView.addArrangedSubview(makePlayerStackView())

        view.addSubview(stackView)

        stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true

        // only activate this one if in landscape
        bottomAnchorConstraint = stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
    }

    // MARK: - Factory methods

    func makeAlbumImageView() -> UIImageView {
        let albumImage = makeImageView(named: "rush")
        let heightAnchorConstraint = albumImage.heightAnchor.constraint(equalTo: albumImage.widthAnchor)
        heightAnchorConstraint.priority = .defaultHigh
        heightAnchorConstraint.isActive = true

        return albumImage
    }

    func makePlayerStackView() -> UIStackView {
        let stackView = makeStackView(withOrientation: .vertical)
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8)

        stackView.addArrangedSubview(playerView)

        return stackView
    }

    // MARK: - Rotation

    @objc func rotated() {
        if UIDevice.current.orientation.isLandscape {
            print("Landscape")
            stackView.axis = .horizontal
            bottomAnchorConstraint.isActive = true
        } else {
            print("Portrait")
            stackView.axis = .vertical
            bottomAnchorConstraint.isActive = false
        }

        playerView.adjustForOrientiation()
    }

    deinit {
        NotificationCenter.default.removeObserver(self)
    }

}

// Notes:
//
// 1. bottomAnchorConstraint needed for landscape
// 2. playerStackView spacing done via layout margins
// 3. heightAnchorConstraint breakable constraint
// 4. PlayerView spacers center

