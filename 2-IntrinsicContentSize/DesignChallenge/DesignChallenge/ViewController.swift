//
//  ViewController.swift
//  DesignChallenge
//
//  Created by Jonathan Rasmusson Work Pro on 2019-07-22.
//  Copyright © 2019 Rasmusson Software Consulting. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    func setupViews() {
        let albumImage = makeImageView(named: "rush")
        let titleLabel = makeTitleLabel(withText: "Tom Sawyer")
        let albumLabel = makeAlbumLabel(withText: "Rush · Moving Pictures (2011 Remaster)")
        let playButtomImage = makeImageView(named: "play") // U R HERE
        let button = makeButton(withText: "PLAY ON SPOTIFY")
        
        view.addSubview(albumImage)
        view.addSubview(titleLabel)
        view.addSubview(albumLabel)
        view.addSubview(button)
        
        albumImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        albumImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        albumImage.heightAnchor.constraint(equalTo: albumImage.widthAnchor, multiplier: 1).isActive = true
        albumImage.widthAnchor.constraint(equalToConstant: view.bounds.width).isActive = true
        
        titleLabel.topAnchor.constraint(equalTo: albumImage.bottomAnchor, constant: 8).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8).isActive = true

        albumLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8).isActive = true
        albumLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
        albumLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8).isActive = true

        button.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -8).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    public func makeImageView(named: String) -> UIImageView {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.contentMode = .scaleAspectFit
        view.image = UIImage(named: named)
        
        // By making the image hug itself a little bit less and less resistant to being compressed
        // we allow the image to stretch and grow as required
        view.setContentHuggingPriority(UILayoutPriority(rawValue: 249), for: .vertical)
        view.setContentCompressionResistancePriority(UILayoutPriority(rawValue: 749), for: .vertical)
        
        return view
    }
    
    func makeTitleLabel(withText text: String) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.backgroundColor = .yellow
        
        return label
    }

    func makeAlbumLabel(withText text: String) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = .lightGray
        label.backgroundColor = .yellow
        
        return label
    }

    func makeButton(withText text: String) -> UIButton {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(text, for: .normal)
        button.backgroundColor = .blue
        button.contentEdgeInsets = UIEdgeInsets(top: 16, left: 16, bottom: 16, right: 16)
        
        return button
    }
}
