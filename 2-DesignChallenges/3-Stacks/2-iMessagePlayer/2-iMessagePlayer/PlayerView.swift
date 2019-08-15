//
//  PreviewPlayer.swift
//  2-iMessagePlayer
//
//  Created by Jonathan Rasmusson Work Pro on 2019-08-14.
//  Copyright © 2019 Rasmusson Software Consulting. All rights reserved.
//

import UIKit

class PlayerView: UIView {
    
    init() {
        super.init(frame: .zero)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        let stackView = makeStackView(withOrientation: .vertical)
        stackView.distribution = .fillProportionally
        
        let trackLabel = makeTrackLabel(withText: "Tom Sawyer")
        let albumLabel = makeAlbumLabel(withText: "Rush • Moving Pictures (2011 Remaster)")
        let playerView = ProgressRow()
        let spotifyButtonView = makeSpotifyButtonStackView()
        // let spotifyButtonView = makeSpotifyButtonCustomView() // Alternative
        
        addSubview(stackView)
        
        stackView.addArrangedSubview(trackLabel)
        stackView.addArrangedSubview(albumLabel)
        stackView.addArrangedSubview(playerView)
        stackView.addArrangedSubview(spotifyButtonView)

        stackView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
    
    //
    // Spotify button width
    //
    //    Getting the Spotify button, not spreading across the entire width of the phone is a challenge.
    //    The StackView wants to 'fill' the entire width. But we don't want that. Two ways to handle.
    
    // Stick the button into another StackView and set it's padding via margins.
    func makeSpotifyButtonStackView() -> UIStackView {
        let spotifyButton = makeSpotifyButton(withText: "PLAY ON SPOTIFY")
        
        let spotifyButtonStackView = makeStackView(withOrientation: .vertical)
        spotifyButtonStackView.isLayoutMarginsRelativeArrangement = true
        spotifyButtonStackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 0, leading: 40, bottom: 0, trailing: 40)
        
        spotifyButtonStackView.addArrangedSubview(spotifyButton)
        
        return spotifyButtonStackView
    }
    
    // Create a custom view, set constraints on the button in there, and then add it to the stackView.
    func makeSpotifyButtonCustomView() -> UIView {
        let spotifyButton = makeSpotifyButton(withText: "PLAY ON SPOTIFY")
        
        let container = UIView()
        container.translatesAutoresizingMaskIntoConstraints = false
        container.heightAnchor.constraint(equalToConstant: buttonHeight).isActive = true
        container.addSubview(spotifyButton)
        
        spotifyButton.centerXAnchor.constraint(equalTo: container.centerXAnchor).isActive = true
        spotifyButton.centerYAnchor.constraint(equalTo: container.centerYAnchor).isActive = true
        spotifyButton.leadingAnchor.constraint(equalTo: container.leadingAnchor, constant: 24).isActive = true
        spotifyButton.trailingAnchor.constraint(equalTo: container.trailingAnchor, constant: -24).isActive = true
        spotifyButton.heightAnchor.constraint(equalToConstant: buttonHeight).isActive = true
        
        return container
    }

    override var intrinsicContentSize: CGSize {
        return CGSize(width: UIView.noIntrinsicMetric, height: 200)
    }
}

// Notes:
//
// 1. This stack is .fillProportionally
// 2. The stackView is pinned to the exterior view.
// 3. Two options for the Spotify button.
