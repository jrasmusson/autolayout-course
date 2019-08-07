//
//  Challenge.swift
//  DesignChallenge
//
//  Created by Jonathan Rasmusson Work Pro on 2019-07-19.
//  Copyright © 2019 Jonathan Rasmusson. All rights reserved.
//

import UIKit

class Challenge: UIViewController {
    
    let margin: CGFloat = 20
    let spacing: CGFloat = 32
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        setupViews()
    }
    
    func setupNavigationBar() {
        navigationItem.title = "Playback"
    }
    
    func setupViews() {

        // Comment in incrementally ...
//        let offlineLabel = makeLabel(withText: "Offline")
//        let offlineSwitch = makeSwitch(isOn: false)
//        let offlineSublabel = makeSubLabel(withText: "When you go offline, you'll only be able to play the music and podcasts you've downloaded.")
//
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

extension UIColor {
    static let offBlack = UIColor(red: 25/255, green: 25/255, blue: 25/255, alpha: 1)
}
