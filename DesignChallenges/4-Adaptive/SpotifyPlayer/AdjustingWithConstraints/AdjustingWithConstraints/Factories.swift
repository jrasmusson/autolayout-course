//
//  Factories.swift
//  AdjustingWithConstraints
//
//  Created by Jonathan Rasmusson (Contractor) on 2019-08-21.
//  Copyright © 2019 Jonathan Rasmusson. All rights reserved.
//

import UIKit

let buttonHeight: CGFloat = 40

public func makeImageView(named: String) -> UIImageView {
    let view = UIImageView()
    view.translatesAutoresizingMaskIntoConstraints = false
    view.contentMode = .scaleAspectFit
    view.image = UIImage(named: named)

    // Stretch and grow
    view.setContentHuggingPriority(UILayoutPriority(rawValue: 249), for: .vertical)
    view.setContentCompressionResistancePriority(UILayoutPriority(rawValue: 749), for: .vertical)

    return view
}

func makeTrackLabel(withText text: String) -> UILabel {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = text
    label.textAlignment = .center
    label.font = UIFont.boldSystemFont(ofSize: 18)

    return label
}

func makeAlbumLabel(withText text: String) -> UILabel {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = text
    label.textAlignment = .center
    label.font = UIFont.systemFont(ofSize: 16)
    label.textColor = .lightGray

    return label
}

func makePlayButton() -> UIButton {
    let image = UIImage(named: "play") as UIImage?

    let button = UIButton()
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setImage(image, for: .normal)
    button.frame = CGRect(x: 100, y: 100, width: 100, height: 100)

    return button
}

func makePreviewLabel(withText text: String) -> UILabel {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = text
    label.textAlignment = .center
    label.font = UIFont.systemFont(ofSize: 10)

    return label
}

func makeProgressView() -> UIProgressView {
    let progressView = UIProgressView(progressViewStyle: .default)
    progressView.translatesAutoresizingMaskIntoConstraints = false
    progressView.tintColor = .gray

    return progressView
}

func makeSpotifyButton(withText title: String) -> UIButton {
    let button = UIButton(type: .system)
    button.translatesAutoresizingMaskIntoConstraints = false
    
    var config = UIButton.Configuration.filled()
    config.baseBackgroundColor = .spotifyGreen
    config.cornerStyle = .capsule
    config.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: buttonHeight, bottom: 10, trailing: buttonHeight)
    button.configuration = config
    
    let attributedText = NSMutableAttributedString(string: title, attributes: [
        NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 16),
        NSAttributedString.Key.foregroundColor: UIColor.white,
        NSAttributedString.Key.kern: 1
        ])

    button.setAttributedTitle(attributedText, for: .normal) // Note how not button.setTitle()
    
    return button
}

func makeStackView(withOrientation axis: NSLayoutConstraint.Axis) -> UIStackView {
    let stackView = UIStackView()
    stackView.translatesAutoresizingMaskIntoConstraints = false
    stackView.axis = axis
    stackView.distribution = .fill
    stackView.alignment = .fill
    stackView.spacing = 8.0

    return stackView
}

public func makeSpacerView(height: CGFloat? = nil) -> UIView {
    let spacerView = UIView(frame: .zero)
    if let height = height {
        spacerView.heightAnchor.constraint(equalToConstant: height).setActiveBreakable()
    }
    spacerView.translatesAutoresizingMaskIntoConstraints = false
    return spacerView
}

public extension NSLayoutConstraint {
    @objc func setActiveBreakable(priority: UILayoutPriority = UILayoutPriority(900)) {
        self.priority = priority
        isActive = true
    }
}

extension UIColor {
    static let darkBlue = UIColor(red: 10/255, green: 132/255, blue: 255/255, alpha: 1)
    static let darkGreen = UIColor(red: 48/255, green: 209/255, blue: 88/255, alpha: 1)
    static let darkOrange = UIColor(red: 255/255, green: 149/255, blue: 0/255, alpha: 1)
    static let darkRed = UIColor(red: 255/255, green: 59/255, blue: 48/255, alpha: 1)
    static let darkTeal = UIColor(red: 90/255, green: 200/255, blue: 250/255, alpha: 1)
    static let darkYellow = UIColor(red: 255/255, green: 204/255, blue: 0/255, alpha: 1)
    static let offBlack = UIColor(red: 25/255, green: 25/255, blue: 25/255, alpha: 1)
    static let spotifyGreen = UIColor(red: 28/255, green: 184/255, blue: 89/255, alpha: 1)
}

