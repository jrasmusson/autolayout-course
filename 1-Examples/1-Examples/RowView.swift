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
        titleLabel.trailingAnchor.constraint(equalTo: onOffSwith.leadingAnchor, constant: -8).isActive = true

        onOffSwith.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        onOffSwith.centerYAnchor.constraint(equalTo: titleLabel.centerYAnchor).isActive = true

        // U R HERE
        // Demo how to pin stack view to sides (resolve ambiguity)
        // Also how what it would take if we wanted keep centered in middle by
        // - adding gap constraint
        // - intrinsic content size
    }

    override var intrinsicContentSize: CGSize {
        return CGSize(width: UIView.noIntrinsicMetric, height: 31)
    }}
