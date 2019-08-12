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
        let albumImage = makeImageView(named: "rush")
        topStackView.addArrangedSubview(albumImage)
        
        // bottom
        let bottomStackView = makeStackView(withOrientation: .vertical)
        bottomStackView.isLayoutMarginsRelativeArrangement = true
        bottomStackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8)

        let trackLabel = makeTrackLabel(withText: "Tom Sawyer")
        let albumLabel = makeAlbumLabel(withText: "Rush • Moving Pictures (2011 Remaster)")
        let playerView = PlayerView()
        let spotifyButton = makeSpotifyButton(withText: "PLAY ON SPOTIFY")
        let spotifyButtonStackView = makeStackView(withOrientation: .vertical)
        spotifyButtonStackView.isLayoutMarginsRelativeArrangement = true
        spotifyButtonStackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 0, leading: 40, bottom: 0, trailing: 40)

        spotifyButtonStackView.addArrangedSubview(spotifyButton)

        bottomStackView.addArrangedSubview(trackLabel)
        bottomStackView.addArrangedSubview(albumLabel)
        bottomStackView.addArrangedSubview(playerView)
        bottomStackView.addArrangedSubview(spotifyButtonStackView)
        
        // container
        let containerStackView = makeStackView(withOrientation: .vertical)
        containerStackView.addArrangedSubview(topStackView)
        containerStackView.addArrangedSubview(bottomStackView)
        
        view.addSubview(containerStackView)
        
        containerStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        containerStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        containerStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        // tweaks
//        spotifyButton.widthAnchor.constraint(equalTo: containerStackView.widthAnchor, multiplier: 1).isActive = true
        spotifyButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
    }
}

// Notes:
//
// Spotify button width
//
//    Getting the Spotify button, not spreading across the entire width of the phone is a challenge.
//    There are two ways we can tackle this.
//
//    1. We can stick the button in another stackView and give it padding via it's margins.
//
//      let spotifyButton = makeSpotifyButton(withText: "PLAY ON SPOTIFY")
//      let spotifyButtonStackView = makeStackView(withOrientation: .vertical)
//      spotifyButtonStackView.isLayoutMarginsRelativeArrangement = true
//      spotifyButtonStackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 0, leading: 40, bottom: 0, trailing: 40)
//
//      bottomStackView.addArrangedSubview(spotifyButtonStackView)
//
//    2. Create a custom view, layout the button in there, and then add it to the stackView.

