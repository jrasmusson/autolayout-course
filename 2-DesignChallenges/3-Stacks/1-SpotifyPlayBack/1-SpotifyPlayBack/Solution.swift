//
//  Solution.swift
//  1-SpotifyPlayBack
//
//  Created by Jonathan Rasmusson Work Pro on 2019-08-09.
//  Copyright © 2019 Rasmusson Software Consulting. All rights reserved.
//

import UIKit

class Solution: UIViewController {
    
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
        let offlineLabel = makeLabel(withText: "Offline")
        let offlineSwitch = makeSwitch(isOn: false)
        let offlineSublabel = makeSubLabel(withText: "When you go offline, you'll only be able to play the music and podcasts you've downloaded.")
        
        let crossfadeLabel = makeBoldLabel(withText: "Crossfade")
        let crossfadeMinLabel = makeSubLabel(withText: "0s")
        let crossfadeMaxLabel = makeSubLabel(withText: "12s")
        let crossfadeProgressView = makeProgressView()
        
        let gaplessPlaybackLabel = makeLabel(withText: "Gapless Playback")
        let gaplessPlaybackSwitch = makeSwitch(isOn: true)
        
        let hideSongsLabel = makeLabel(withText: "Hide Unplayable Songs")
        let hideSongsSwitch = makeSwitch(isOn: true)
        
        let enableNormalizationLabel = makeLabel(withText: "Enable Audio Normalization")
        let enableNormalizationSwitch = makeSwitch(isOn: true)
        
        view.addSubview(offlineLabel)
        view.addSubview(offlineSwitch)
        view.addSubview(offlineSublabel)
        
        view.addSubview(crossfadeLabel)
        view.addSubview(crossfadeMinLabel)
        view.addSubview(crossfadeProgressView)
        view.addSubview(crossfadeMaxLabel)
        
        view.addSubview(gaplessPlaybackLabel)
        view.addSubview(gaplessPlaybackSwitch)
        
        view.addSubview(hideSongsLabel)
        view.addSubview(hideSongsSwitch)
        
        view.addSubview(enableNormalizationLabel)
        view.addSubview(enableNormalizationSwitch)
        
        offlineLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: margin).isActive = true
        offlineLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin).isActive = true
        
        offlineSwitch.centerYAnchor.constraint(equalTo: offlineLabel.centerYAnchor).isActive = true
        offlineSwitch.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -margin).isActive = true
        
        offlineSublabel.topAnchor.constraint(equalTo: offlineLabel.bottomAnchor, constant: margin).isActive = true
        offlineSublabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin).isActive = true
        offlineSublabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -margin).isActive = true
        
        crossfadeLabel.topAnchor.constraint(equalTo: offlineSublabel.bottomAnchor, constant: spacing).isActive = true
        crossfadeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        crossfadeMinLabel.topAnchor.constraint(equalTo: crossfadeLabel.bottomAnchor, constant: spacing).isActive = true
        crossfadeMinLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin).isActive = true
        
        crossfadeProgressView.centerYAnchor.constraint(equalTo: crossfadeMinLabel.centerYAnchor).isActive = true
        crossfadeProgressView.leadingAnchor.constraint(equalTo: crossfadeMinLabel.trailingAnchor, constant: 4).isActive = true
        crossfadeProgressView.trailingAnchor.constraint(equalTo: crossfadeMaxLabel.leadingAnchor, constant: -4).isActive = true
        
        crossfadeMaxLabel.centerYAnchor.constraint(equalTo: crossfadeMinLabel.centerYAnchor).isActive = true
        crossfadeMaxLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -margin).isActive = true
        
        gaplessPlaybackLabel.topAnchor.constraint(equalTo: crossfadeMinLabel.bottomAnchor, constant: spacing).isActive = true
        gaplessPlaybackLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin).isActive = true
        
        gaplessPlaybackSwitch.centerYAnchor.constraint(equalTo: gaplessPlaybackLabel.centerYAnchor).isActive = true
        gaplessPlaybackSwitch.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -margin).isActive = true
        
        hideSongsLabel.topAnchor.constraint(equalTo: gaplessPlaybackLabel.bottomAnchor, constant: spacing).isActive = true
        hideSongsLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin).isActive = true
        
        hideSongsSwitch.centerYAnchor.constraint(equalTo: hideSongsLabel.centerYAnchor).isActive = true
        hideSongsSwitch.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -margin).isActive = true
        
        enableNormalizationLabel.topAnchor.constraint(equalTo: hideSongsLabel.bottomAnchor, constant: spacing).isActive = true
        enableNormalizationLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin).isActive = true
        
        enableNormalizationSwitch.centerYAnchor.constraint(equalTo: enableNormalizationLabel.centerYAnchor).isActive = true
        enableNormalizationSwitch.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -margin).isActive = true
        
    }
}

// MARK: - Factories

func makeLabel(withText text: String) -> UILabel {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = text
    label.textColor = .white
    label.font = UIFont.systemFont(ofSize: 17)
    
    return label
}

func makeSubLabel(withText text: String) -> UILabel {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = text
    label.textColor = .gray
    label.font = UIFont.systemFont(ofSize: 13)
    label.numberOfLines = 0 // multiline
    
    return label
}

func makeBoldLabel(withText text: String) -> UILabel {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = text
    label.textColor = .white
    label.font = UIFont.boldSystemFont(ofSize: 17)
    
    return label
}

func makeSwitch(isOn: Bool) -> UISwitch {
    let theSwitch = UISwitch()
    theSwitch.translatesAutoresizingMaskIntoConstraints = false
    theSwitch.isOn = isOn
    
    return theSwitch
}

func makeProgressView() -> UIProgressView {
    let progressView = UIProgressView(progressViewStyle: .default)
    progressView.translatesAutoresizingMaskIntoConstraints = false
    progressView.tintColor = .gray
    
    return progressView
}

extension UINavigationController {
    override open var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}

