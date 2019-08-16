//
//  Solution.swift
//  2-iMessagePlayer
//
//  Created by Jonathan Rasmusson Work Pro on 2019-08-11.
//  Copyright © 2019 Rasmusson Software Consulting. All rights reserved.
//

import UIKit

class Solution: UIViewController {
    
    var containerStackView: UIStackView
    var playerView: PlayerView
    
    init() {
        containerStackView = makeStackView(withOrientation: .vertical)
        playerView = PlayerView()
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        registerForOrientationChanges()
        setupViews()
    }
    
    func registerForOrientationChanges() {
        NotificationCenter.default.addObserver(self, selector: #selector(Solution.rotated), name: UIDevice.orientationDidChangeNotification, object: nil)
    }

    func setupViews() {
        
        // top
        let topStackView = makeStackView(withOrientation: .vertical)
        let albumImage = makeAlbumImageView()

        topStackView.addArrangedSubview(albumImage)
        
        // bottom
        let bottomStackView = makeBottomStackView()
        let playerView = PlayerView()
        
        bottomStackView.addArrangedSubview(playerView)
        
        // container
        containerStackView.addArrangedSubview(topStackView)
        containerStackView.addArrangedSubview(bottomStackView)
        
        view.addSubview(containerStackView)
        
        containerStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        containerStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        containerStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }
    
    // MARK: - Factory methods
    
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
    
    // MARK: - Rotation
    
    @objc func rotated() {
        playerView.adjustForOrientiation()
        
        if UIDevice.current.orientation.isLandscape {
            print("Landscape")
            containerStackView.axis = .horizontal
        } else {
            print("Portrait")
            containerStackView.axis = .vertical
        }
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }

}
