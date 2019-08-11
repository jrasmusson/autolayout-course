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
        bottomStackView.distribution = .fillProportionally
        let trackLabel = makeTrackLabel(withText: "Tom Sawyer")
        let albumLabel = makeAlbumLabel(withText: "Rush • Moving Pictures (2011 Remaster)")
        let playerView = PlayerView()
        let spotifyButton = makeSpotifyButton(withText: "PLAY ON SPOTIFY")
        
        bottomStackView.addArrangedSubview(trackLabel)
        bottomStackView.addArrangedSubview(albumLabel)
        bottomStackView.addArrangedSubview(playerView)
        bottomStackView.addArrangedSubview(spotifyButton)
        
        // container
        let containerStackView = makeStackView(withOrientation: .vertical)
        containerStackView.addArrangedSubview(topStackView)
        containerStackView.addArrangedSubview(bottomStackView)
        
        view.addSubview(containerStackView)
        
        containerStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        containerStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        containerStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }
    

}

