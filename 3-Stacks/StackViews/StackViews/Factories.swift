//
//  Factories.swift
//  StackViews
//
//  Created by Jonathan Rasmusson (Contractor) on 2019-08-06.
//  Copyright © 2019 Jonathan Rasmusson. All rights reserved.
//

import UIKit

func makeStackView(withOrientation axis: NSLayoutConstraint.Axis) -> UIStackView {
    let stackView = UIStackView()
    stackView.translatesAutoresizingMaskIntoConstraints = false
    stackView.axis = axis
    stackView.distribution = .fill
    stackView.alignment = .fill
    stackView.spacing = 8.0

    return stackView
}

func makeTextField(withPlaceholderText placeHolderText: String) -> UITextField {
    let textField = UITextField()
    textField.translatesAutoresizingMaskIntoConstraints = false
    textField.placeholder = placeHolderText
    textField.backgroundColor = .orange

    return textField
}

func makeLabel(withText text: String) -> UILabel {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = text
    label.textAlignment = .center
    label.font = UIFont.systemFont(ofSize: 32)
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
