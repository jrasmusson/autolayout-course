//
//  PreviewPlayer.swift
//  2-iMessagePlayer
//
//  Created by Jonathan Rasmusson Work Pro on 2019-08-14.
//  Copyright © 2019 Rasmusson Software Consulting. All rights reserved.
//

import UIKit

class PlayerView: UIView {
    
//    var stackView: UIStackView
//    var topAnchorConstraint = NSLayoutConstraint()
//    var bottomAnchorConstraint = NSLayoutConstraint()
//    var centerYConstraint = NSLayoutConstraint()

    var spacer1: UIView
    var spacer2: UIView

    init() {
        spacer1 = makeSpacerView(height: 100)
        spacer1.backgroundColor = .red
        spacer2 = makeSpacerView(height: 100)
        spacer2.backgroundColor = .blue
        
        super.init(frame: .zero)
        
        setupViews()
//        setupOrientationConstraints()
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
        let spotifyButtonView = makeSpotifyButtonCustomView()
        

        addSubview(stackView)
        
        stackView.addArrangedSubview(spacer1)
        stackView.addArrangedSubview(trackLabel)
        stackView.addArrangedSubview(albumLabel)
        stackView.addArrangedSubview(playerView)
        stackView.addArrangedSubview(spotifyButtonView)
        stackView.addArrangedSubview(spacer2)
        
        spacer1.heightAnchor.constraint(equalTo: spacer2.heightAnchor).isActive = true

        stackView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
    
    //
    // When the orientation changes, we want to turn off the top & bottom constraints
    // and center the playerView on the y-axis.
    //
//    func setupOrientationConstraints() {
//        topAnchorConstraint = stackView.topAnchor.constraint(equalTo: topAnchor)
//        bottomAnchorConstraint = stackView.bottomAnchor.constraint(equalTo: bottomAnchor)
//        centerYConstraint = stackView.centerYAnchor.constraint(equalTo: centerYAnchor)
//
//        if UIDevice.current.orientation.isPortrait {
//            topAnchorConstraint.isActive = true
//            bottomAnchorConstraint.isActive = true
//            centerYConstraint.isActive = false
//        } else {
//            topAnchorConstraint.isActive = false
//            bottomAnchorConstraint.isActive = false
//            centerYConstraint.isActive = true
//        }
//    }
    
    //
    // This customView centers the button and allows it to size itself.
    //
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
            spacer1.isHidden = false
            spacer2.isHidden = false
        } else {
            spacer1.isHidden = true
            spacer2.isHidden = true
        }
    }
}
