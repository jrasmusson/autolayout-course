//
//  Solution.swift
//  2-iMessagePlayer
//
//  Created by Jonathan Rasmusson Work Pro on 2019-08-11.
//  Copyright © 2019 Rasmusson Software Consulting. All rights reserved.
//

import UIKit

class Solution: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    func setupViews() {
        
        // top
        let topStackView = makeStackView(withOrientation: .vertical)
        let albumImage = makeAlbumImageView()

        topStackView.addArrangedSubview(albumImage)
        
        // bottom
        let bottomStackView = makeBottomStackView()

        let trackLabel = makeTrackLabel(withText: "Tom Sawyer")
        let albumLabel = makeAlbumLabel(withText: "Rush • Moving Pictures (2011 Remaster)")
        let playerView = PlayerView()
        let spotifyButtonView = makeSpotifyButtonStackView()
        // let spotifyButtonView = makeSpotifyButtonCustomView() // Alternative
        
        bottomStackView.addArrangedSubview(trackLabel)
        bottomStackView.addArrangedSubview(albumLabel)
        bottomStackView.addArrangedSubview(playerView)
        bottomStackView.addArrangedSubview(spotifyButtonView)
        
        // container
        let containerStackView = makeStackView(withOrientation: .vertical)
        containerStackView.addArrangedSubview(topStackView)
        containerStackView.addArrangedSubview(bottomStackView)
        
        view.addSubview(containerStackView)
        
        containerStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        containerStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        containerStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }
    
    //
    // Notes:
    //
    
    func makeAlbumImageView() -> UIImageView {
        let albumImage = makeImageView(named: "rush")
        albumImage.heightAnchor.constraint(equalTo: albumImage.widthAnchor, multiplier: 1).isActive = true
        albumImage.widthAnchor.constraint(equalToConstant: view.bounds.width).isActive = true

        return albumImage
    }
    
    func makeBottomStackView() -> UIStackView {
        let bottomStackView = makeStackView(withOrientation: .vertical)
        bottomStackView.isLayoutMarginsRelativeArrangement = true
        bottomStackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8)

        return bottomStackView
    }
    
    // Spotify button width
    //
    //    Getting the Spotify button, not spreading across the entire width of the phone is a challenge.
    //    The StackView wants to 'fill' the entire width. But we don't want that. Two ways to handle.

    // 1. Stick the button into another StackView and set it's padding via margins.
    func makeSpotifyButtonStackView() -> UIStackView {
        let spotifyButton = makeSpotifyButton(withText: "PLAY ON SPOTIFY")
        
        let spotifyButtonStackView = makeStackView(withOrientation: .vertical)
        spotifyButtonStackView.isLayoutMarginsRelativeArrangement = true
        spotifyButtonStackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 0, leading: 40, bottom: 0, trailing: 40)
        
        spotifyButtonStackView.addArrangedSubview(spotifyButton)
        
        return spotifyButtonStackView
    }
    
    // 2. Create a custom view, set constraints on the button in there, and then add it to the stackView.
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

}


