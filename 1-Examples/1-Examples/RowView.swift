//
//  RowView.swift
//  1-Examples
//
//  Created by Jonathan Rasmusson (Contractor) on 2019-08-07.
//  Copyright © 2019 Jonathan Rasmusson. All rights reserved.
//

import UIKit

class RowView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)

        setupViews()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setupViews() {
        let titleLabel = makeLabel(withText: "Gapless Playback")
        let onOffSwith = makeSwitch(isOn: true)

        addSubview(titleLabel)
        addSubview(onOffSwith)

        titleLabel.topAnchor.constraint(equalTo: topAnchor).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
//        titleLabel.trailingAnchor.constraint(equalTo: onOffSwith.leadingAnchor, constant: -8).isActive = true
        
        onOffSwith.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        onOffSwith.centerYAnchor.constraint(equalTo: titleLabel.centerYAnchor).isActive = true
        
//        self.heightAnchor.constraint(equalToConstant: 31).isActive = true

        // Scrollable - let the title stretch
        titleLabel.setContentHuggingPriority(UILayoutPriority(rawValue: 48), for: .horizontal)
        titleLabel.setContentCompressionResistancePriority(UILayoutPriority(rawValue: 749), for: .horizontal)

        // make the switch hug
        onOffSwith.setContentHuggingPriority(UILayoutPriority(rawValue: 251), for: .vertical)
        onOffSwith.setContentHuggingPriority(UILayoutPriority(rawValue: 251), for: .horizontal)
    }

    override var intrinsicContentSize: CGSize {
        return CGSize(width: 200, height: 31)
//        return CGSize(width: UIView.noIntrinsicMetric, height: 31)
    }
    
}

// For stackview to appear in the middle - need to add a few more constraints
//        titleLabel.trailingAnchor.constraint(equalTo: onOffSwith.leadingAnchor, constant: -8).isActive = true

