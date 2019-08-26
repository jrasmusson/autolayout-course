//
//  Solution.swift
//  BasicStacks
//
//  Created by Jonathan Rasmusson (Contractor) on 2019-08-26.
//  Copyright © 2019 Jonathan Rasmusson. All rights reserved.
//

import UIKit

class Solution: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        setupViews()
    }

    func setupNavigationBar() {
        navigationItem.title = "Playback"
    }

    func setupViews() {
        let stackView = makeStackView(withOrientation: .vertical)
        stackView.spacing = 20

        let offlineRow = RowView(title: "Offline", isOn: false)

        let offlineSublabel = makeSubLabel(withText: "When you go offline, you'll only be able to play the music and podcasts you've downloaded.")

        let crossfadeView = CrossfadeView()

        let gaplessRow = RowView(title: "Gapless Playback", isOn: true)
        let hideSongsRow = RowView(title: "Hide Unplayable Songs", isOn: true)
        let normalizationRow = RowView(title: "Enable Audio Normalization", isOn: true)

        stackView.addArrangedSubview(offlineRow)
        stackView.addArrangedSubview(offlineSublabel)
        stackView.addArrangedSubview(crossfadeView)
        stackView.addArrangedSubview(gaplessRow)
        stackView.addArrangedSubview(hideSongsRow)
        stackView.addArrangedSubview(normalizationRow)

        view.addSubview(stackView)

        // Pinning to the sides of view
        stackView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true


        // for padding and spacing
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16)
    }
}

// Notes:
//
// 1. We don't need to pin stackview to the bottom (top, leading, trailing are enough)
//        stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
//
// 2. We don't need the width constraint we needed with the scrollview (margins respected)
//        offlineRow.widthAnchor.constraint(equalTo: stackView.widthAnchor, multiplier: 1, constant: -32).isActive = true
//
// 3. Reduced number of constraints by two thrirds (30 to 12).
//


