//
//  PreviewPlayer.swift
//  2-iMessagePlayer
//
//  Created by Jonathan Rasmusson Work Pro on 2019-08-14.
//  Copyright © 2019 Rasmusson Software Consulting. All rights reserved.
//

import UIKit

class PlayerView: UIView {
    
    var stackView: UIStackView
    var topAnchorConstraint = NSLayoutConstraint()
    var bottomAnchorConstraint = NSLayoutConstraint()
    var centerYConstraint = NSLayoutConstraint()

    init() {
        stackView = makeStackView(withOrientation: .vertical)
        stackView.distribution = .fillProportionally
        
        super.init(frame: .zero)
        
        setupViews()
        setupOrientationConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        let trackLabel = makeTrackLabel(withText: "Tom Sawyer")
        let albumLabel = makeAlbumLabel(withText: "Rush • Moving Pictures (2011 Remaster)")
        let playerView = ProgressRow()
        let spotifyButtonView = makeSpotifyButtonCustomView()
        
        addSubview(stackView)
        
        stackView.addArrangedSubview(trackLabel)
        stackView.addArrangedSubview(albumLabel)
        stackView.addArrangedSubview(playerView)
        stackView.addArrangedSubview(spotifyButtonView)
        
        // topAnchor & bottom are dynamic - see below
        stackView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    }
    
    func setupOrientationConstraints() {
        topAnchorConstraint = stackView.topAnchor.constraint(equalTo: topAnchor)
        bottomAnchorConstraint = stackView.bottomAnchor.constraint(equalTo: bottomAnchor)
        centerYConstraint = stackView.centerYAnchor.constraint(equalTo: centerYAnchor)
        
        if UIDevice.current.orientation.isPortrait {
            topAnchorConstraint.isActive = true
            bottomAnchorConstraint.isActive = true
            centerYConstraint.isActive = false
        } else {
            topAnchorConstraint.isActive = false
            bottomAnchorConstraint.isActive = false
            centerYConstraint.isActive = true
        }
    }
    
    func makeSpotifyButtonCustomView() -> UIView {
        let spotifyButton = makeSpotifyButton(withText: "PLAY ON SPOTIFY")
        
        let container = UIView()
        container.translatesAutoresizingMaskIntoConstraints = false
        container.heightAnchor.constraint(equalToConstant: buttonHeight).isActive = true
        container.addSubview(spotifyButton)
        
        spotifyButton.centerXAnchor.constraint(equalTo: container.centerXAnchor).isActive = true
        spotifyButton.centerYAnchor.constraint(equalTo: container.centerYAnchor).isActive = true
        spotifyButton.heightAnchor.constraint(equalToConstant: buttonHeight).isActive = true
        
        return container
    }

    override var intrinsicContentSize: CGSize {
        return CGSize(width: UIView.noIntrinsicMetric, height: 200)
    }
    
    func adjustForOrientiation() {
        if UIDevice.current.orientation.isLandscape {
            topAnchorConstraint.isActive = false
            centerYConstraint.isActive = true
        } else {
            topAnchorConstraint.isActive = true
            centerYConstraint.isActive = false
        }
    }
}
