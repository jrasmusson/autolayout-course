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
        let playerView = PlayerView()
        
        bottomStackView.addArrangedSubview(playerView)
        
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
    // Factory methods
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
}
