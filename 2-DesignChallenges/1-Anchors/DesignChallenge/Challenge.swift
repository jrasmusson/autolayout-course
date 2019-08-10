//
//  Challenge.swift
//  DesignChallenge
//
//  Created by Jonathan Rasmusson Work Pro on 2019-07-19.
//  Copyright © 2019 Jonathan Rasmusson. All rights reserved.
//

import UIKit

class Challenge: UIViewController {
        
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

        let offlineRow = RowView(title: "Offline", isOn: false)
        let offlineSublabel = makeSubLabel(withText: "When you go offline, you'll only be able to play the music and podcasts you've downloaded.")
        
        stackView.addArrangedSubview(offlineRow)
        stackView.addArrangedSubview(offlineSublabel)

        view.addSubview(stackView)
        
        

        
        // Pinning to the sides of view
        stackView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true

        
        // for padding and spacing
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16)
        
        
//        let crossfadeLabel = makeBoldLabel(withText: "Crossfade")
//        let crossfadeMinLabel = makeSubLabel(withText: "0s")
//        let crossfadeMaxLabel = makeSubLabel(withText: "12s")
//        let crossfadeProgressView = makeProgressView()
//
//        let gaplessPlaybackLabel = makeLabel(withText: "Gapless Playback")
//        let gaplessPlaybackSwitch = makeSwitch(isOn: true)
//
//        let hideSongsLabel = makeLabel(withText: "Hide Unplayable Songs")
//        let hideSongsSwitch = makeSwitch(isOn: true)
//
//        let enableNormalizationLabel = makeLabel(withText: "Enable Audio Normalization")
//        let enableNormalizationSwitch = makeSwitch(isOn: true)
//
//        view.addSubview(offlineLabel)
//        view.addSubview(offlineSwitch)
//        view.addSubview(offlineSublabel)
//
//        view.addSubview(crossfadeLabel)
//        view.addSubview(crossfadeMinLabel)
//        view.addSubview(crossfadeProgressView)
//        view.addSubview(crossfadeMaxLabel)
//
//        view.addSubview(gaplessPlaybackLabel)
//        view.addSubview(gaplessPlaybackSwitch)
//
//        view.addSubview(hideSongsLabel)
//        view.addSubview(hideSongsSwitch)
//
//        view.addSubview(enableNormalizationLabel)
//        view.addSubview(enableNormalizationSwitch)

        // Start your layout here...

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



