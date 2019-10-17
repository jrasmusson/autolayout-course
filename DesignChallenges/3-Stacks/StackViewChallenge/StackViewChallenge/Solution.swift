//
//  Solution.swift
//  StackViewChallenge
//
//  Created by Jonathan Rasmusson Work Pro on 2019-10-17.
//  Copyright © 2019 Rasmusson Software Consulting. All rights reserved.
//

import UIKit

   /*
    
    Solution:

    ┌────────StackView─────────┐
    │                          │
    │        offlineRow        │
    │                          │
    │      offlineSublabel     │
    │                          │   axis = vertical
    │       crossfadeView      │   distribution = fill
    │                          │   alignment = fill
    │        gaplessRow        │   spacing = 20
    │                          │
    │       hideSongsRow       │
    │                          │
    │     normalizationRow     │
    │                          │
    └──────────────────────────┘
    
    Things of note:
 
    1. No bottom constraint on StackView required.
 
        Because the StackView is fully intrinsically sized, we don't need a button constraint pinning it to the bottom.
        We could add one if we wanted it to fully stretch. But if we want it to retain it's size non is required.
 
    2. Notice the how many fewer constraints are required.
 
        Our original layout for this back in the anchors design challenge required around 30 constraints.
        With the StackView, and all of it's built in spacing we now require ~12. Considerably fewer.
    */

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


        // Padding and spacing
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16)
    }
}
